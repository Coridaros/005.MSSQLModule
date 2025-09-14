--Task 016
CREATE DATABASE [SoftUni]

GO

USE [SoftUni]

GO

CREATE TABLE [Towns]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL
)

CREATE TABLE [Addresses]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[AddressText] NVARCHAR(100) NOT NULL,
	[TownId] INT FOREIGN KEY (TownId) REFERENCES [Towns](Id)
)

CREATE TABLE [Departments]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL
)

CREATE TABLE [Employees]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[MiddleName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[JobTitle] NVARCHAR(50) NOT NULL,
	[DepartmentId] INT FOREIGN KEY (DepartmentId) REFERENCES [Departments](Id) NOT NULL,
	[HireDate] DATETIME2 NOT NULL,
	[Salary] DECIMAL(7, 2) NOT NULL,
	[AddressId] INT FOREIGN KEY (AddressId) REFERENCES [Addresses](Id)
)

--Task 018
INSERT INTO Towns
VALUES  ('Sofia'),
		('Plovdiv'),
		('Varna'),
		('Burgas');

INSERT INTO Departments
VALUES  ('Engineering'),
		('Sales'),
		('Marketing'),
		('Software Development'),
		('Quality Assurance');
		
INSERT INTO Employees
VALUES  ('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013/02/01', 3500.00, NULL),
		('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004/03/02', 4000.00, NULL),
		('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016/08/28', 525.25, NULL),
		('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007/12/09', 3000.00, NULL),
		('Peter', 'Pan', 'Pan', 'Intern', 3, '2016/08/28', 599.88, NULL);

--Task 019
SELECT * FROM Towns;
SELECT * FROM Departments;
SELECT * FROM Employees;

--Task 020
SELECT * FROM Towns ORDER BY [Name];
SELECT * FROM Departments ORDER BY [Name];
SELECT * FROM Employees ORDER BY Salary DESC;

--Task 021
SELECT [Name] FROM Towns ORDER BY [Name];
SELECT [Name] FROM Departments ORDER BY [Name];
SELECT FirstName, LastName, JobTitle, Salary
FROM Employees ORDER BY Salary DESC;

--Task 022
UPDATE Employees SET Salary = Salary + (Salary * 0.10);
SELECT Salary FROM Employees;

--Task 023
UPDATE Payments SET TaxRate = TaxRate - (TaxRate * 0.03);
SELECT TaxRate FROM Payments;

--Task 024
TRUNCATE TABLE Occupancies;