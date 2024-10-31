CREATE DATABASE QLCT;

CREATE TABLE Host (
	ID INT PRIMARY KEY,
    Name VARCHAR(45),
    Address VARCHAR(45)
);

CREATE TABLE Contractor (
	ID INT PRIMARY KEY,
    Name_ VARCHAR(255),
    Address VARCHAR(255),
    Contractorcol VARCHAR(45)
);

CREATE TABLE Worker (
	ID INT PRIMARY KEY,
    Full_name VARCHAR(45),
    Birthday VARCHAR(45),
    Years Varchar(45),
    Skill VARCHAR(45)
);

CREATE TABLE Achitect (
	ID INT PRIMARY KEY,
    AchitectName VARCHAR(255),
    Sex TINYINT(1),
    Birthday DATE,
    Place VARCHAR(255),
    Address VARCHAR(255)
);

