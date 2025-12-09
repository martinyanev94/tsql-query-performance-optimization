CREATE PROCEDURE GetSalesByProduct
    @ProductID INT
AS
BEGIN
    SELECT * FROM Sales.SalesOrderDetail WHERE ProductID = @ProductID;
END
SELECT * FROM Sales.SalesOrderDetail WHERE ProductID = @ProductID
OPTION (RECOMPILE);
