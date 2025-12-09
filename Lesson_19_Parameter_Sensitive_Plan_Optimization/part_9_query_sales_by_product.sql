SELECT CustomerID, SalesAmount
FROM Sales
WHERE ProductID = @ProductID
OPTION (RECOMPILE);
