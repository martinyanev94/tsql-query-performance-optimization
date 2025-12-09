CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2)
);
DECLARE @CategoryID INT = 3;
SELECT * FROM Products WHERE CategoryID = @CategoryID;
CREATE NONCLUSTERED INDEX IDX_CategoryID
ON Products(CategoryID);
