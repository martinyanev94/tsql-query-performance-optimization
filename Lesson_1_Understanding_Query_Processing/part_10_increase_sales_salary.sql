-- Increasing salary for all employees in the Sales department
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'Sales';
