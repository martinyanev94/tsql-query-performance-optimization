CREATE PROCEDURE GetCustomersByState
    @State NVARCHAR(50)
AS
BEGIN
    DECLARE @LocalState NVARCHAR(50);
    SET @LocalState = @State;

    SELECT CustomerID, CustomerName
    FROM Customers
    WHERE State = @LocalState;
END;
