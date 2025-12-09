SELECT * 
FROM Employees 
WHERE Department = @Dept
OPTION (RECOMPILE);
