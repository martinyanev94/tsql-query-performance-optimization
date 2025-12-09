SELECT 
    CustomerID, 
    OrderDate 
FROM 
    Orders 
WHERE 
    OrderStatus = 'Completed';
CREATE INDEX IX_OrderStatus ON Orders(OrderStatus);
ALTER DATABASE YourDatabaseName 
SET QUERY_STORE = ON;
