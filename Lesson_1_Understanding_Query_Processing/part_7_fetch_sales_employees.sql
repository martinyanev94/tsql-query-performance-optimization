SELECT FirstName, LastName
FROM Employees
WHERE DepartmentID IN (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Sales');
