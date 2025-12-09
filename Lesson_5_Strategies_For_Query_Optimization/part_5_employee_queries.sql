CREATE INDEX IX_Employees_JobTitle_LastName ON Employees(JobTitle, LastName);
SELECT * FROM Employees 
WHERE JobTitle = 'Software Engineer' AND LastName = 'Doe';
