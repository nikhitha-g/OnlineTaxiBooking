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
Salary INT,
CurrentLocation VARCHAR(50) 
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
Fare INT,
Rating INT,
Feedback VARCHAR(50)
)
CREATE TABLE Users_Admin
(
Username VARCHAR(50) PRIMARY KEY,
[Password] VARCHAR(50) UNIQUE NOT NULL,
EmployeeId INT FOREIGN KEY REFERENCES dbo.Employee(EmployeeId)
)

CREATE TABLE Location
(
LocationLongitude INT,
LocationLatitude INT,
LocationName VARCHAR(50)
)

Insert into Location values
(200,200,'Bellandur')

Insert into Location values
(240,275,'Electronic City')

Insert into Location values
(150,230,'WhiteField')

Insert into Location values
(275,210,'JP Nagar')

Insert into Location values
(240,50,'Hebbal')

Insert into Location values
(210,130,'Indira Nagar')

Insert into Location values
(235,140,'Tin Factory')

Insert into Location values
(180,150,'Kormangala')

Insert into Location values
(280,100,'Chikpet')

Insert into Location values
(210,220,'HSR Layout')

Insert into Location values
(200,270,'Sarjapura')

Insert into Location values
(50,50,'Yashwanthpur')

Insert into Location values
(240,120,'LalBagh')

Insert into Location values
(300,230,'Banashankari')

Insert into Location values
(220,210,'Marathalli')

Insert into Location values
(230,210,'SilkBoard')

Insert into Location values
(230,210,'BTM Layout')

Insert into Location values
(240,245,'Bommanahalli')

Insert into Location values
(230,75,'Nagwara')

Insert into Location values
(300,10,'Airport')
