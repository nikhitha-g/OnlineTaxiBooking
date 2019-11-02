CREATE DATABASE OnlineTaxiBookingSystem
USE OnlineTaxiBookingSystem

CREATE TABLE Customer
(
CustomerId	INT PRIMARY KEY,
CustomerName VARCHAR(50),
PhoneNo VARCHAR(50),
Email VARCHAR(50),
)



CREATE TABLE Users_Customers
(
Username VARCHAR(50) PRIMARY KEY,
[Password] VARCHAR(50) UNIQUE NOT NULL,
CustomerId INT FOREIGN KEY REFERENCES dbo.Customer(CustomerId) 
)

CREATE TABLE Employee
(
EmployeeId INT PRIMARY KEY,
EmployeeName VARCHAR(50),
PhoneNo VARCHAR(50),
[Address] VARCHAR(50),
Email VARCHAR(50),
Salary INT
)

CREATE TABLE Users_Employees
(
Username VARCHAR(50) PRIMARY KEY,
[Password] VARCHAR(50) UNIQUE NOT NULL,
EmployeeId INT FOREIGN KEY REFERENCES dbo.Employee(EmployeeId)
)

CREATE TABLE Taxi
(
	TaxiNo VARCHAR(50) PRIMARY KEY,
	Model VARCHAR(50),
)

CREATE TABLE Roaster
(
RoasterId INT PRIMARY KEY,
EmployeeId INT FOREIGN KEY REFERENCES dbo.Employee(EmployeeId),
TaxiNo VARCHAR(50) FOREIGN KEY REFERENCES dbo.Taxi(TaxiNo),
FromDate DATE,
ToDate DATE,
InTime TIME,
OutTime	TIME
)

CREATE TABLE Booking
(
BookingId INT PRIMARY KEY,
CustomerId INT FOREIGN KEY REFERENCES dbo.Customer(CustomerId),
EmployeeId INT FOREIGN KEY REFERENCES dbo.Employee(EmployeeId),
TaxiNo VARCHAR(50) FOREIGN KEY REFERENCES dbo.Taxi(TaxiNo),
TimeOfBooking DATETIME,
PickUpLocaton VARCHAR(50),
DropLocaton VARCHAR(50),
Fare INT
)
CREATE TABLE Users_Admin
(
Username VARCHAR(50) PRIMARY KEY,
[Password] VARCHAR(50) UNIQUE NOT NULL,
EmployeeId INT FOREIGN KEY REFERENCES dbo.Employee(EmployeeId)
)