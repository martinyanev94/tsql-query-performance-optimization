SELECT ProductID, ProductName, Price
FROM Products WITH (INDEX(IX_Products_CategoryID))
WHERE CategoryID = @CategoryID;
