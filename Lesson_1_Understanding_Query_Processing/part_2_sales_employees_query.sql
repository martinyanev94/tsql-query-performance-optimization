SET SHOWPLAN_XML ON;
GO
SELECT FirstName, LastName
FROM Employees
WHERE Department = 'Sales';
GO
SET SHOWPLAN_XML OFF;
