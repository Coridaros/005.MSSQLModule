--Task 015
CREATE DATABASE [HotelDatabase] -- Без това в judge

GO -- Без това в judge

USE [HotelDatabase] -- Без това в judge

GO -- Без това в judge

CREATE TABLE Employees(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR(15) NOT NULL,
	LastName VARCHAR(15) NOT NULL,
	Title VARCHAR(20) NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE Customers(
	AccountNumber INT PRIMARY KEY NOT NULL,
	FirstName VARCHAR(15) NOT NULL,
	LastName VARCHAR(15) NOT NULL,
	PhoneNumber INT NOT NULL,
	EmergencyName VARCHAR(15) NOT NULL,
	EmergencyNumber INT NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE RoomStatus(
	RoomStatus VARCHAR(25) PRIMARY KEY NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE RoomTypes(
	RoomType VARCHAR(25) PRIMARY KEY NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE BedTypes(
	BedType VARCHAR(25) PRIMARY KEY NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE Rooms(
	RoomNumber INT IDENTITY(1,1) PRIMARY KEY,
	RoomType VARCHAR(25) FOREIGN KEY REFERENCES RoomTypes(RoomType) NOT NULL,
	BedType VARCHAR(25) FOREIGN KEY REFERENCES BedTypes(BedType) NOT NULL,
	Rate FLOAT NOT NULL,
	RoomStatus VARCHAR(25) FOREIGN KEY REFERENCES RoomStatus(RoomStatus) NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE Payments(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
	PaymentDate DATETIME2 NOT NULL,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
	FirstDateOccupied DATETIME2 NOT NULL,
	LastDateOccupied DATETIME2 NOT NULL,
	TotalDays SMALLINT NOT NULL,
	AmountCharged FLOAT NOT NULL,
	TaxRate FLOAT NOT NULL,
	TaxAmount FLOAT NOT NULL,
	TaxTotal FLOAT NOT NULL,
	PaymentTotal FLOAT NOT NULL,
	Notes VARCHAR(MAX)
);

CREATE TABLE Occupancies(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
	DateOccupied DATETIME2 NOT NULL,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
	RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber) NOT NULL,
	RateApplied FLOAT NOT NULL,
	PhoneCharge FLOAT,
	Notes VARCHAR(MAX)
);

INSERT INTO Employees
VALUES  ('Damqn', 'Didjeiov', 'Recepcionist', '..i DJ v svobodnoto si vreme'),
		('Karla', 'Grigorova', 'Kamerierka', NULL),
		('Petran', 'Petrunkov', 'Pikolo', NULL);

INSERT INTO Customers
VALUES  (14912, 'Pesho', 'Peshov', 0881231231, 'Peshkan', 0812312314, NULL),
		(124512, 'Dimitrina', 'Vuchkova', 0881231231, 'Dimi', 0812312314, NULL),
		(1231233, 'Sebastian', 'James', 0881231231, 'Angli4anina', 0812312314, 'gost ot angliq');
		
INSERT INTO RoomStatus
VALUES  ('zaeta', NULL),
		('svobodna', NULL),
		('rezervirana', NULL);
		
INSERT INTO RoomTypes
VALUES  ('dvoina', NULL),
		('apartament', NULL),
		('edinichna', NULL);

INSERT INTO BedTypes
VALUES  ('dvoino', NULL),
		('vodno', NULL),
		('prista', NULL);

INSERT INTO Rooms
VALUES  ('dvoina', 'vodno', 170.50, 'zaeta', NULL),
		('apartament', 'dvoino', 196.20, 'rezervirana', NULL),
		('edinichna', 'prista', 70.70, 'svobodna', NULL);

INSERT INTO Payments
VALUES  (1, '2022-12-12', 14912, '2022-12-10', '2022-12-15', 5, 605, 2023.2, 2628.20, 15, 55, 'mnogo golqma taksa chuek'),
		(2, '2022-10-06', 124512, '2022-10-10', '2022-10-15', 5, 100, 15.20, 115.20, 15, 55, NULL),
		(3, '2022-03-09', 1231233, '2022-05-06', '2022-05-12', 6, 33, 2, 35, 15, 55, 'mnogo evtino chuek');
		
INSERT INTO Occupancies
VALUES  (1, GETDATE(), 14912, 1, 105, 50, NULL),
		(2, GETDATE(), 124512, 2, 105, 50, NULL),
		(3, GETDATE(), 1231233, 3, 105, 50, NULL)
