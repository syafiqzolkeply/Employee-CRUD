# This statement will create a new database named Employee
CREATE DATABASE Employee;

# This statement tells MySQL to use the named database as the default (current) database for any subsequent statement
USE Employee;

# This statement will create a table named Employee
CREATE TABLE Employee
(
 EmpID INT NOT NULL AUTO_INCREMENT,
 EmpName VARCHAR(150) NOT NULL,
 Country VARCHAR(50) NOT NULL,
 Email VARCHAR(100) NOT NULL UNIQUE,
 Telephone VARCHAR(20),
 PRIMARY KEY(EmpID)
);

# This statement will insert a set of data into Employee table
INSERT INTO Employee (EmpName, Country, Email, Telephone)
SELECT 'John Smith','United States America','jsmith@ymail.com','+122487796431'
UNION ALL
SELECT 'Suzanne Lancaster','Scotland','szlancaster@gmail.com','N/A';