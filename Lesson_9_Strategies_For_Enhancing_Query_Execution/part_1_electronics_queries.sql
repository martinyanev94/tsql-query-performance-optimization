SELECT ProductName, Price
FROM Products
WHERE Category = 'Electronics';
SET SHOWPLAN_XML ON;
CREATE INDEX IX_Products_Category 
ON Products(Category);
