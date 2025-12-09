SELECT a.OrderID, b.CustomerName 
FROM Orders a 
JOIN Customers b ON a.CustomerID = b.CustomerID 
OPTION (RECOMPILE);
