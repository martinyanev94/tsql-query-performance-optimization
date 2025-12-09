DECLARE @EmployeeID INT;

DECLARE emp_cursor CURSOR FOR
SELECT EmployeeID FROM Employees WHERE DepartmentID = 1;

OPEN emp_cursor;
FETCH NEXT FROM emp_cursor INTO @EmployeeID;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @EmployeeID;
    FETCH NEXT FROM emp_cursor INTO @EmployeeID;
END;

CLOSE emp_cursor;
DEALLOCATE emp_cursor;
