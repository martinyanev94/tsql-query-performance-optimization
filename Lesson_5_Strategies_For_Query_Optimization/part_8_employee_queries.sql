SELECT * FROM Employees WHERE JobTitle = 'Software Engineer';
SELECT FirstName, LastName FROM Employees WHERE JobTitle = 'Software Engineer';
SELECT * FROM Employees WHERE YEAR(HireDate) = 2023;
SELECT * FROM Employees 
WHERE HireDate >= '2023-01-01' AND HireDate < '2024-01-01';
