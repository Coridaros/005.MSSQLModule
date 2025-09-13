--Task 008

CREATE TABLE [Users]
(
	[Id] BIGINT IDENTITY(1, 1) PRIMARY KEY,
	[Username] VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	[ProfilePicture] INT,
	[LastLoginTime] DATETIME2,
	[IsDeleted] BIT
)

INSERT INTO [Users] VALUES
	('BabaYaga', 'dfsdf', 1, '1999-12-31', 1),
	('Torbalan', 'fgdfgdf', 2, '2001-01-01', 0),
	('Dracula', 'rtert', 3, '0581-01-01', 0),
	('Boiko tikvata', 'magistralata', 4, '1957-02-02', 0),
	('Papata', 'fdgdfg', 5, '1000-05-20', 1)

--Task 009
ALTER TABLE [Users]
DROP CONSTRAINT PK__Users__3214EC0726447032

ALTER TABLE [Users]
ADD CONSTRAINT PK_User PRIMARY KEY(Id, Username)

--Task 010
ALTER TABLE [Users]
ADD CONSTRAINT CHK_PasswordLength CHECK(LEN([Password]) >= 5)

--Task 011
ALTER TABLE [Users]
ADD CONSTRAINT DF_LastLoginTime
DEFAULT GETDATE() FOR [LastLoginTime]

--Task 012
ALTER TABLE [Users]
DROP CONSTRAINT PK_User

ALTER TABLE [Users]
ADD CONSTRAINT PK_User PRIMARY KEY([Id])

ALTER TABLE [Users]
ADD CONSTRAINT UC_Username UNIQUE([Username])

ALTER TABLE [Users]
ADD CONSTRAINT CHK_UsernameLegth CHECK(LEN([Username]) >= 3)
