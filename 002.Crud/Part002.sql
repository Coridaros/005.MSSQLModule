--Task 006
SELECT CONCAT([FirstName], '.', [LastName], '@softuni.bg')
	AS [Full Email Address]
  FROM [Employees]

--Task 007
SELECT DISTINCT 
		        [Salary] 
           FROM
		        [Employees]

--Task 008
SELECT * FROM [Employees]
WHERE [JobTitle] = 'Sales Representative';

--Task 009
SELECT [FirstName],
	   [LastName],
	   [JobTitle]
  FROM [Employees]
WHERE  [Salary] BETWEEN 20000 AND 30000

--Task 010
SELECT CONCAT_WS(' ', [FirstName], [MiddleName], [LastName])
	AS [Full Name]
  FROM [Employees]
 WHERE [Salary] IN (25000, 14000, 12500, 23600)