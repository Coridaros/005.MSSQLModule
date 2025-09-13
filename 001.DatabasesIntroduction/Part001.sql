--Task 001
CREATE DATABASE [Minions]

GO

USE [Minions]

GO

--Task 002
CREATE TABLE [Minions]
(
	[Id] INT PRIMARY KEY,
	[Name] NVARCHAR(150) NOT NULL,
	[Age] SMALLINT
)

CREATE TABLE [Towns]
(
	[Id] INT PRIMARY KEY,
	[Name] NVARCHAR(150) NOT NULL
)

--Task 003
ALTER TABLE [Minions]
	ADD [TownId] INT NOT NULL

ALTER TABLE [Minions]
	ADD FOREIGN KEY (TownId) REFERENCES [Towns](Id)

--Task 004
INSERT INTO [Towns] VALUES
	(1, 'Sofia'),
	(2, 'Plovdiv'),
	(3, 'Varna')

INSERT INTO [Minions] VALUES
	(1, 'Kevin', 22, 1),
	(2, 'Bob', 15, 3),
	(3, 'Steward', NULL, 2)

--Task 005
TRUNCATE TABLE [Minions]

--Task 006
DROP TABLE [Minions]
DROP TABLE [Towns]
