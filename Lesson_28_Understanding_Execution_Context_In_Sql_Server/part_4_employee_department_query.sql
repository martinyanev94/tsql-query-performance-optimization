SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName 
FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
WHERE d.Location = 'New York';
