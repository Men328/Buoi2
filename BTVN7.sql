CREATE DATABASE PhanTichDoanhThu;

CREATE TABLE Products3 (
	ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(255),
    Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Sales (
	SaleID INT PRIMARY KEY,
    SaleDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(10,2)
);

CREATE TABLE SaleDetails (
	SaleDetailID INT PRIMARY KEY,
    SaleID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2) NOT NULL
);

ALTER TABLE SaleDetails 
ADD FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
ADD FOREIGN KEY (ProductID) REFERENCES Products3(ProductID)