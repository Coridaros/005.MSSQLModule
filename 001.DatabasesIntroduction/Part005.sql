--Task 014
CREATE DATABASE [CarRental] -- Без това в judge

GO -- Без това в judge

USE [CarRental] -- Без това в judge

GO -- Без това в judge

CREATE TABLE [Categories]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[CategoryName] NVARCHAR(200) NOT NULL,
	[DailyRate] DECIMAL(7, 2) NOT NULL,
	[WeeklyRate] DECIMAL(7, 2) NOT NULL,
	[MonthlyRate] DECIMAL(7, 2) NOT NULL,
	[WeekendRate] DECIMAL(7, 2) NOT NULL
)

CREATE TABLE [Cars]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[PlateNumber] NVARCHAR(10) NOT NULL,
	[Manufacturer] NVARCHAR(50) NOT NULL,
	[Model] NVARCHAR(50) NOT NULL,
	[CarYear] DATETIME2 NOT NULL,
	[CategoryId] INT NOT NULL,
	[Doors] SMALLINT NOT NULL,
	[Picture] BIT,
	[Condition] NVARCHAR(20),
	[Available] BIT NOT NULL
)

CREATE TABLE [Employees]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[Title] NVARCHAR(100) NOT NULL,
	[Notes] NVARCHAR(200)
)

CREATE TABLE [Customers]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[DriverLicenceNumber] NVARCHAR(100) NOT NULL,
	[FullName] NVARCHAR(200) NOT NULL,
	[Address] NVARCHAR(200) NOT NULL,
	[City] NVARCHAR(50) NOT NULL,
	[ZIPCode] NVARCHAR(20) NOT NULL,
	[Notes] NVARCHAR(200)
)

CREATE TABLE [RentalOrders]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[EmployeeId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[CarId] INT NOT NULL,
	[TankLevel] SMALLINT NOT NULL,
	[KilometrageStart] INT NOT NULL,
	[KilometrageEnd] INT NOT NULL,
	[TotalKilometrage] INT NOT NULL,
	[StartDate] DATETIME2 NOT NULL,
	[EndDate] DATETIME2 NOT NULL,
	[TotalDays] INT NOT NULL,
	[RateApplied] DECIMAL(7, 2) NOT NULL,
	[TaxRate] DECIMAL(7, 2) NOT NULL,
	[OrderStatus] NVARCHAR(20) NOT NULL,
	[Notes] NVARCHAR(200)
)

INSERT INTO [Categories] VALUES
	('Test1', 10, 20, 30, 40),
	('Test2', 10, 20, 30, 40),
	('Test3', 10, 20, 30, 40)

INSERT INTO [Cars] VALUES
	('1234', 'Mercedes', 'ML55', '2010-12-05', 1, 5, 0, 'Good', 1),
	('1235', 'Mercedes', 'ML55', '2010-12-05', 1, 5, 0, 'Good', 1),
	('1236', 'Mercedes', 'ML55', '2010-12-05', 1, 5, 0, 'Good', 1)

INSERT INTO [Employees] VALUES
	('Pesho', 'Peshov', 'obshtak', NULL),
	('Pesho', 'Peshov', 'obshtak', NULL),
	('Pesho', 'Peshov', 'obshtak', NULL)

INSERT INTO [Customers] VALUES
	('dgfg', 'Petko', 'nqma', 'kaspichan', '1000', NULL),
	('dgfg', 'Petko', 'nqma', 'kaspichan', '1000', NULL),
	('dgfg', 'Petko', 'nqma', 'kaspichan', '1000', NULL)

INSERT INTO [RentalOrders] VALUES
	(1, 2, 3, 55, 1000, 1234, 234, '2025-09-13', '2025-09-14', 1, 100, 110, 'Yes', NULL),
	(1, 2, 3, 55, 1000, 1234, 234, '2025-09-13', '2025-09-14', 1, 100, 110, 'Yes', NULL),
	(1, 2, 3, 55, 1000, 1234, 234, '2025-09-13', '2025-09-14', 1, 100, 110, 'Yes', NULL)