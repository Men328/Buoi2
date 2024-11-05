CREATE DATABASE QLSP_DH;

CREATE TABLE Products1 (
	ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL
);

CREATE TABLE Orders1 (
	OrderID INT PRIMARY KEY,
    OrderDate DATE,
    ProductID INT, 
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) 
)