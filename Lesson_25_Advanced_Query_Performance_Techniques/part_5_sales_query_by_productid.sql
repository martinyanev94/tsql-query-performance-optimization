EXEC sp_executesql N'SELECT * FROM Sales WHERE ProductID = @ProductID', N'@ProductID INT', @ProductID = 3;
EXEC sp_executesql N'SELECT * FROM Sales WHERE ProductID = @ProductID', N'@ProductID INT', @ProductID = 4;
