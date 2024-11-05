CREATE DATABASE EcommerceDB1;

CREATE TABLE Users1 (
	UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    PasswordHash VARCHAR(255),
    Email VARCHAR(100),
    CreatedAt DATETIME
);

CREATE TABLE Orders4 (
	OrdersID INT PRIMARY KEY,
    UserID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (UserID) REFERENCES Users1(UserID)
);

CREATE TABLE Products4 (
	ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Reviews (
	ReviewID INT PRIMARY KEY,
    ProductID INT,
    UserID INT, 
    Rating INT,
    ReviewText TEXT,
    CreatedAt DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users1(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products4(ProductID)
);

CREATE TABLE OrderDetails1 (
	OrderDetailID INT PRIMARY KEY,
    OrderID INT, 
    ProductID INT,
    Quantity INT,
    PriceAtOrder DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders4(OrdersID),
    FOREIGN KEY (ProductID) REFERENCES Products4(ProductID)
);

-- UserName và Email không bị trùng lặp
ALTER TABLE Users1
ADD CONSTRAINT CT_Username UNIQUE (UserName);

ALTER TABLE Users1
ADD CONSTRAINT CT_Email UNIQUE (Email);

-- Các trường ProductName, Price, và Stock không để trống
ALTER TABLE Products4
MODIFY ProductName VARCHAR(100) NOT NULL;

ALTER TABLE Products4
MODIFY Price DECIMAL(10,2) NOT NULL;

ALTER TABLE Products4
MODIFY Stock INT NOT NULL;

-- Các trường Quantity và PriceAtOrder không âm
ALTER TABLE OrderDetails1
ADD CONSTRAINT CHK_Quantity CHECK (Quantity >= 0);

ALTER TABLE OrderDetails1
ADD CONSTRAINT CHK_PriceAtOrder CHECK (PriceAtOrder >= 0);

-- Trường TotalAmount không âm
ALTER TABLE Orders4
ADD CONSTRAINT CHK_TotalAmount CHECK (TotalAmount >= 0);

-- Trường Rating nằm trong khoảng từ 1 đến 5
ALTER TABLE Reviews
ADD CONSTRAINT CHK_Rating CHECK (Rating BETWEEN 1 AND 5);





