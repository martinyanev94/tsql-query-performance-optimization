SELECT CustomerID, CustomerName
FROM Customers
WHERE Status = 'Active';
CREATE INDEX IX_Customers_Status ON Customers(Status);
