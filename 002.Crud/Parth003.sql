--Task 011
SELECT [FirstName],
	   [LastName]
  FROM [Employees]
 WHERE [ManagerID] IS NULL

 --Task 012
  SELECT  [FirstName],
	      [LastName],
		  [Salary]
    FROM  [Employees]
   WHERE  [Salary] > 50000
ORDER BY  [Salary] DESC

--Task 013
  SELECT TOP (5)
		 [FirstName],
		 [LastName]
    FROM [Employees]
ORDER BY [Salary] DESC

--Task 014
SELECT [FirstName],
       [LastName]
  FROM [Employees]
 WHERE [DepartmentID] != 4

 --Task 015
 SELECT * FROM [Employees]
 ORDER BY [Salary] DESC, [FirstName], [LastName] DESC, [MiddleName]