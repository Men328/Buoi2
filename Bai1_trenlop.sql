CREATE DATABASE ECommerceDB;

USE ECommerceDB;

CREATE TABLE Users (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Product (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Decription TEXT,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);

CREATE TABLE Cart (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    UserID	INT,
	FOREIGN KEY (UserId) REFERENCES Users(ID),
    Total FLOAT NOT NULL
);

CREATE TABLE CartItems (
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    CartID INT,
    FOREIGN KEY (CartID) REFERENCES Product(ID),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ID),
    Quantity INT NOT NULL
);

ALTER TABLE Users
DROP COLUMN Email;

