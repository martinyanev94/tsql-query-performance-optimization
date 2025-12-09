CREATE PROCEDURE GetEmployeesByDepartment 
    @DepartmentName NVARCHAR(50)
AS
BEGIN
    SELECT FirstName, LastName 
    FROM Employees 
    WHERE Department = @DepartmentName
    OPTION (RECOMPILE);
END;
