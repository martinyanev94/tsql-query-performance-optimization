SELECT * FROM Employees WHERE JobTitle = 'Software Engineer';
SET STATISTICS IO ON;
SET STATISTICS TIME ON;
SELECT * FROM Employees WHERE JobTitle = 'Software Engineer';
SET STATISTICS IO OFF;
SET STATISTICS TIME OFF;
CREATE INDEX IX_Employees_JobTitle ON Employees(JobTitle);
