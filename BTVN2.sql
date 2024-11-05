CREATE DATABASE BTVN2;

CREATE TABLE Products (
	ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Eletronics', 999.99, 90),
(2, 'smartphone', 'Eletronics', 509, 59),
(3, 'Coffee Maker', 'Home Appliances', 777, 99);