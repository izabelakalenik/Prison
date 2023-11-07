SELECT
    g."PESEL",
    g."Name",
    g."Surname",
    r."Rank",
    DATE_TRUNC('month', d."StartDate") AS Month,
    SUM(EXTRACT(EPOCH FROM (d."EndDate" - d."StartDate")) / 3600) AS WorkHours
FROM
    public."Guard" g
JOIN
    public."GuardDuty" gd ON g."IdGuard" = gd."IdGuard"
JOIN
    public."Duty" d ON gd."IdDuty" = d."IdDuty"
JOIN
    public."Rank" r ON g."IdRank" = r."IdRank"
WHERE
    DATE_TRUNC('month', d."StartDate") = DATE_TRUNC('month', '2023-02-01'::date)
    AND g."IdPrison" = (SELECT "IdPrison" FROM public."Prison" WHERE "PenitentiaryName" = 'Więzienie nr: 6')
GROUP BY
    g."PESEL", g."Name", g."Surname", r."Rank", Month
ORDER BY
    WorkHours DESC
LIMIT 3;
