CREATE PROCEDURE GetPurchasesByDate
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT PurchaseID, ProductName, Quantity
    FROM Purchases
    WHERE PurchaseDate BETWEEN @StartDate AND @EndDate;
END
