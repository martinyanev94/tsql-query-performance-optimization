SELECT * 
FROM Orders 
WHERE CustomerID = @CustomerID 
OPTION (RECOMPILE);
