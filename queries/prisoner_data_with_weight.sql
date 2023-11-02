-- DONE
SELECT
    p."IdPrisoner",
    p."PESEL",
    p."FirstName",
    p."LastName",
    p."AdmissionDate",
    p."Height",
    p."BloodGroup",
    p."Sex",
    e."ExaminationDate" AS "ExaminationDate",
    e."ExaminationResult" AS "ExaminationResult"
FROM
    public."Prisoner" p
LEFT JOIN
    public."Examination" e ON p."IdPrisoner" = e."IdPrisoner" AND e."ExaminationType" = 'Masa ciała'
WHERE
    p."FirstName" = 'Dawid' AND p."LastName" = 'Grygo';


--
-- -- All prisoners with body weight examination
-- SELECT
--     p."IdPrisoner",
--     p."PESEL",
--     p."FirstName",
--     p."LastName",
--     p."AdmissionDate",
--     p."Height",
--     p."BloodGroup",
--     p."Sex",
--     e."ExaminationDate" AS "WeightExaminationDate",
--     e."ExaminationResult" AS "WeightResult"
-- FROM
--     public."Prisoner" p
-- JOIN
--     public."Examination" e ON p."IdPrisoner" = e."IdPrisoner" AND e."ExaminationType" = 'Masa ciała';
