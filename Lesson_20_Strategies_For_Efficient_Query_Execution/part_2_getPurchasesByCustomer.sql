SELECT PurchaseID, ProductName, Quantity
FROM Purchases
WHERE CustomerID = @CustomerID
OPTION (RECOMPILE);
