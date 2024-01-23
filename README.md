# Prison Database
Project for the Database Design course - 5th semester, completed in a group of 3 people.

This project encompasses the creation of both a relational and a non-relational database 
for the Polish internal network system of Prisons. The facilities accommodate both male and female inmates. 
The primary objective of the databases is to streamline the management of data 
for individuals currently residing and working within these institutions.

A Python script has been developed to populate the databases with randomly generated data. 
The relational database utilizes PostgreSQL as the backend, managed through pgAdmin, 
while the non-relational database is implemented in MongoDB. 
The script generates diverse data sets, considering relationships between entities seamlessly.

## Technologies
### Relational database
* **Pony ORM:** An efficient object-relational mapping library.
* **Faker:** A library for generating realistic and randomized data.
* **Database Management System:** PostgreSQL, managed through pgAdmin.

### Non-Relational database
* **MongoDB:** A NoSQL database used for storing non-relational data.
* **Faker**

## How to use
### Relational database
1. Execute the provided SQL scripts in a PostgreSQL environment to set up the necessary tables and relationships.
2. Ensure pgAdmin is configured for effective management of the database.
3. Run the Python script to populate the database with realistic and randomized data.
4. Some tables may require manual data entry due to the nature of the information they hold.
5. Utilize pgAdmin to explore the data, manage relationships, and perform queries on the relational database.

### Non-Relational database
1. Ensure MongoDB is installed and running on your system.
2. Run the Python script to populate the MongoDB with realistic and randomized data.
3. Leverage MongoDB Compass or the MongoDB shell to explore the data, manage relationships, and perform queries on the non-relational database.

The system is designed to handle associations between different entities, 
ensuring comprehensive data management in both relational and non-relational environments.
