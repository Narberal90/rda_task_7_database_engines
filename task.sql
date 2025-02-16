CREATE DATABASE ShopDB;

USE ShopDB;

-- Create a table to store countries 
CREATE TABLE Countries (ID INT, Name VARCHAR(50), PRIMARY KEY (ID)) ENGINE = InnoDB;

-- Create a table for caching GeoIP data (Columns: ID, IP Range, CountryID)
CREATE TABLE GeoIPCache (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    IPRange VARCHAR(50),
    CountryID INT
) ENGINE = MYISAM;

CREATE TABLE ProductDescription (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Description VARCHAR(100),
    ProductID INT,
    CountryID INT
) ENGINE = InnoDB;

CREATE TABLE Logs (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Timestamp TIMESTAMP,
    Message VARCHAR(500)
) ENGINE = BLACKHOLE;

CREATE TABLE ProductReporting (
    Date DATE NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    Orders INT NOT NULL
) ENGINE = CSV;
