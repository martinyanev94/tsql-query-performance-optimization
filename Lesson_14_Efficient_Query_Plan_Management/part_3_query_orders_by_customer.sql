SELECT * 
FROM Orders 
WHERE CustomerID = @CustomerID;
EXEC sp_executesql N'SELECT * FROM Orders WHERE CustomerID = @CustomerID', N'@CustomerID INT', @CustomerID = 1;
