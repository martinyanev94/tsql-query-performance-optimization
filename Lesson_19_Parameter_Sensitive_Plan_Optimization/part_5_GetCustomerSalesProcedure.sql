CREATE PROCEDURE GetCustomerSales
    @CustomerID INT,
    @SalesAmount DECIMAL(10, 2)
AS
BEGIN
    SELECT SalesID, SalesDate, SalesAmount
    FROM Sales
    WHERE CustomerID = @CustomerID AND SalesAmount = @SalesAmount;
END
