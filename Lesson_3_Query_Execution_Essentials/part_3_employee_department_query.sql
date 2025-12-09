SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employees e 
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
