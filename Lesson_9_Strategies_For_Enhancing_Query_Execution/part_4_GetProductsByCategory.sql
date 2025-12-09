CREATE PROCEDURE GetProductsByCategory
    @Category NVARCHAR(50)
AS
BEGIN
    SELECT ProductName, Price
    FROM Products
    WHERE Category = @Category
    OPTION (RECOMPILE);
END;
