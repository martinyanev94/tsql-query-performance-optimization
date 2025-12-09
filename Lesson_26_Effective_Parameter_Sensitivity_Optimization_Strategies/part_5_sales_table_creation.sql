CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    Price DECIMAL(10, 2)
);
CREATE STATISTICS Stats_ProductID_SaleDate
ON Sales(ProductID, SaleDate);
