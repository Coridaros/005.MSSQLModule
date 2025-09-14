--Task 013
CREATE DATABASE [Movies] -- Без това в judge

GO -- Без това в judge

USE [Movies] -- Без това в judge

GO -- Без това в judge

CREATE TABLE [Directors]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[DirectorsName] NVARCHAR(200) NOT NULL,
	[Notes] NVARCHAR(2000) 
)

CREATE TABLE [Genres]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[GenreName] NVARCHAR(200) NOT NULL,
	[Notes] NVARCHAR(2000)
)	

CREATE TABLE [Categories]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[CategoryName] NVARCHAR(200) NOT NULL,
	[Notes] NVARCHAR(2000)
)

CREATE TABLE [Movies]
(
	[Id] INT IDENTITY(1, 1) PRIMARY KEY,
	[Title] NVARCHAR(200) NOT NULL,
	[DirectorId] INT NOT NULL,
	[CopyRightYear] DATETIME2 NOT NULL,
	[Length] DECIMAL(7, 2) NOT NULL,
	[GenreId] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	[Rating] INT,
	[Notes] NVARCHAR(2000)
)

INSERT INTO [Directors] VALUES
	('Ivan', NULL),
	('Petkan', NULL),
	('Goro', NULL),
	('Michka', NULL),
	('Penka', NULL)

INSERT INTO [Genres] VALUES
	('12+', NULL),
	('14+', NULL),
	('16+', NULL),
	('18+', NULL),
	('Adult', NULL)

INSERT INTO [Categories] VALUES
	('Komediq', NULL),
	('dfgdf', NULL),
	('ertert', NULL),
	('Test', NULL),
	('blabla', NULL)

INSERT INTO [Movies] VALUES
	('Chervenata shapchica', 1, '1999-01-03', 120.35, 1, 3, 1, NULL),
	('Exploring', 3, '2025-09-10', 90.55, 3, 5, 1, NULL),
	('Exploring 2', 3, '2025-07-14', 90.55, 3, 5, 1, 'mn qko'),
	('Exploring 3', 3, '2025-01-14', 90.55, 3, 5, 1, NULL),
	('Exploring 4', 3, '2025-05-14', 90.55, 3, 5, 1, 'ne pitai')
