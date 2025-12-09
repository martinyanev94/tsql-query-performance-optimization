DECLARE @LocalCustomerID INT;
SET @LocalCustomerID = @CustomerID;

SELECT *
FROM Orders
WHERE CustomerID = @LocalCustomerID;
