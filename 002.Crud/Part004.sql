--Task 016
CREATE VIEW V_EmployeesSalaries AS
SELECT [FirstName],
	   [LastName],
	   [Salary]
  FROM [Employees]

GO

--Task 017
/* CREATE VIEW V_EmployeeNameJobTitle AS
SELECT CONCAT_WS(' ', [FirstName], [MiddleName], [LastName]) AS [Full Name],
	   [JobTitle]
  FROM [Employees] */

CREATE VIEW [V_EmployeeNameJobTitle]
AS
SELECT FirstName + ' ' + ISNULL(MiddleName, '')+ ' ' + LastName
AS [FullName], JobTitle
FROM Employees;

GO

SELECT * FROM V_EmployeeNameJobTitle

--Task 018
SELECT DISTINCT [JobTitle] FROM [Employees]

--Task 019
SELECT TOP (10) * FROM [Projects]
ORDER BY [StartDate], [Name]

--Task 020
SELECT TOP (7) [FirstName],
       [LastName],
	   [HireDate]
  FROM [Employees]
ORDER BY [HireDate] DESC

--Task 021
UPDATE Employees

SET Salary = Salary + (Salary * 0.12)
WHERE DepartmentID = 1 
OR DepartmentID = 2 
OR DepartmentID = 4
OR DepartmentID = 11

SELECT Salary FROM Employees

--Task 022
SELECT [PeakName] FROM [Peaks]
ORDER BY [PeakName]

--Task 023
SELECT TOP 30 CountryName, [Population] FROM Countries
WHERE ContinentCode = 'EU' ORDER BY [Population] DESC, CountryName;

--Task 024
SELECT CountryName, CountryCode,
CASE
    WHEN CurrencyCode = 'EUR' THEN 'Euro'
    ELSE 'Not Euro'
END AS Currency
FROM Countries ORDER BY CountryName;

--Task 25
SELECT [Name] FROM Characters ORDER BY [Name];