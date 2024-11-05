CREATE DATABASE BTVN4;

CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
    OrderDate DATETIME NOT NULL,
    CustomerID INT, 
    TotalAmount DECIMAL(10,2),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
	CHECK (TotalAmount >= 0)
);	