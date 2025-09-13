--Task 007
CREATE TABLE [People]
(
	[Id] BIGINT IDENTITY(1,1) PRIMARY KEY,
	[NAME] NVARCHAR(200) NOT NULL,
	[PICTURE] BIT,
	[Height] DECIMAL(10, 2),
	[Weight] DECIMAL(10, 2),
	[Gender] CHAR(1) NOT NULL,
	[Birthdate] DATETIME2 NOT NULL,
	[Biograpgy] NVARCHAR(MAX)
)

INSERT INTO [People] VALUES
	('Az', 1, 168.2, 58, 'm', '1987-07-07', 'Vsichko'),
	('Pesho', NULL, 180.3, 20.1, 'm', '1900-01-01', 'Някъв дядко'),
	('Marcheto', 1, 160, 48, 'f', '1987-07-01', 'Нимфоманка'),
	('Na Pesho jenata', 1, 154, 48, 'f', ' 1903-03-15', 'dsfsdf'),
	('Gorkata', NULL, 150.3, 120, 'm', '1999-12-20', 'debelak')

