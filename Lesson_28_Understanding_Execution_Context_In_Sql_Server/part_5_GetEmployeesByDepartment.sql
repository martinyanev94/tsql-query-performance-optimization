CREATE PROCEDURE GetEmployeesByDepartment
    @Department NVARCHAR(50)
AS
BEGIN
    SELECT EmployeeID, EmployeeName 
    FROM Employees 
    WHERE Department = @Department;
END;
CREATE PROCEDURE GetEmployeesByDepartment
    @Department NVARCHAR(50)
AS
BEGIN
    SELECT EmployeeID, EmployeeName 
    FROM Employees 
    WHERE Department = @Department
    OPTION (RECOMPILE);
END;
