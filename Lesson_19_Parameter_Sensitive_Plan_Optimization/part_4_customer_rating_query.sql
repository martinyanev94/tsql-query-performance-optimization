DECLARE @CustomerRating INT;
SET @CustomerRating = 5;

SELECT CustomerID, CustomerName
FROM Customers
WHERE CustomerRating = @CustomerRating;
