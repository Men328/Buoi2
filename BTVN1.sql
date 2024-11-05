CREATE DATABASE ComanyDB;

CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    HireDate DATE,
    Salary FLOAT
);

ALTER TABLE Employees
ADD Department VARCHAR(100);

ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(10,2);
