SELECT FirstName, LastName 
FROM Employees WITH (FORCESEEK)
WHERE Department = 'Sales';
