CREATE OR ALTER PROCEDURE GetOrdersByStatus
    @Status NVARCHAR(50)
AS
BEGIN
    SELECT OrderID, OrderDate, CustomerID
    FROM Orders
    WHERE OrderStatus = @Status;
END;
EXEC GetOrdersByStatus @Status = 'Shipped';
EXEC GetOrdersByStatus @Status = 'Pending';
EXEC GetOrdersByStatus @Status = 'Cancelled';
