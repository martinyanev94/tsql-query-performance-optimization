CREATE PROCEDURE GetCustomersByState
    @State NVARCHAR(50)
AS
BEGIN
    SELECT CustomerID, CustomerName
    FROM Customers
    WHERE State = @State;
END;
CREATE PROCEDURE GetCustomersByState
    @State NVARCHAR(50)
AS
BEGIN
    SELECT CustomerID, CustomerName
    FROM Customers
    WHERE State = @State
    OPTION (RECOMPILE);
END;
