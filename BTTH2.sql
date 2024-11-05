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

CREATE TABLE Building (
	ID INT PRIMARY KEY,
    BuildingName VARCHAR(45),
    Address VARCHAR(45),
	City VARCHAR(45),
    Cost FLOAT,
    StartTime DATE,
    Host_ID INT
);

CREATE TABLE Design (
	Building_ID INT,
    Achitect_ID INT,
    Benefit VARCHAR(45),
    FOREIGN KEY (Building_ID) REFERENCES Building(ID),
    FOREIGN KEY (Achitect_ID) REFERENCES Achitect(ID)
)
;
CREATE TABLE Work (
	Building_ID INT,
    Worker_ID INT PRIMARY KEY,
    DateOfWork DATE,
    Total VARCHAR(45)
)
