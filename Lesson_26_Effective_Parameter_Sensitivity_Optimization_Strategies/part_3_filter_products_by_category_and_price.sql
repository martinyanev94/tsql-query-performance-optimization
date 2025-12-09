DECLARE @CategoryID INT = 2;
DECLARE @Price DECIMAL(10, 2) = 20.00;
SELECT * FROM Products 
WHERE CategoryID = @CategoryID AND Price < @Price;
CREATE NONCLUSTERED INDEX IDX_CategoryID_Price
ON Products(CategoryID, Price);
