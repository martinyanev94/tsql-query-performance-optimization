BEGIN TRANSACTION;

BEGIN TRY
    INSERT INTO Employees (EmployeeName, DepartmentID)
    VALUES ('John Doe', 1);
    
    UPDATE Departments
    SET EmployeeCount = EmployeeCount + 1
    WHERE DepartmentID = 1;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT ERROR_MESSAGE();
END CATCH;
