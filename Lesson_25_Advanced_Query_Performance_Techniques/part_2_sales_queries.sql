CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleDate DATE
);
DECLARE @ProductID INT = 1;
SELECT * FROM Sales WHERE ProductID = @ProductID;
DECLARE @ProductID INT = 2;
SELECT * FROM Sales WHERE ProductID = @ProductID;
