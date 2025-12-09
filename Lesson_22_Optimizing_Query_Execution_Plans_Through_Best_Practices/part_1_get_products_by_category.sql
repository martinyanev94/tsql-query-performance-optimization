CREATE PROCEDURE GetProductsByCategory
    @CategoryID INT
AS
BEGIN
    SELECT ProductID, ProductName, Price
    FROM Products
    WHERE CategoryID = @CategoryID;
END
EXEC GetProductsByCategory @CategoryID = 1;
EXEC GetProductsByCategory @CategoryID = 2;
EXEC GetProductsByCategory @CategoryID = 3;
