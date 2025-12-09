CREATE PROCEDURE GetOrdersByStatus
    @Status NVARCHAR(50)
AS
BEGIN
    SELECT OrderID, OrderDate, CustomerID
    FROM Orders
    WHERE OrderStatus = @Status;
END;
