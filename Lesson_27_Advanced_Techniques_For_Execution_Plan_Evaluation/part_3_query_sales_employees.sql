DECLARE @Department NVARCHAR(50)
SET @Department = 'Sales'

EXEC sp_executesql 
    N'SELECT * FROM Employees WHERE Department = @Dept', 
    N'@Dept NVARCHAR(50)', 
    @Dept = @Department;
