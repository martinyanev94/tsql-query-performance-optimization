CREATE PROCEDURE GetCustomersByState
    @State NVARCHAR(50)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    
    SET @SQL = N'SELECT CustomerID, CustomerName FROM Customers WHERE State = @StateParam';
    
    EXEC sp_executesql @SQL, N'@StateParam NVARCHAR(50)', @StateParam = @State;
END;
