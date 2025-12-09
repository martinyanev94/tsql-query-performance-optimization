DECLARE @Category VARCHAR(50);
DECLARE @Price DECIMAL(10, 2);

SET @Category = 'Electronics';
SET @Price = 200.00;

SELECT *
FROM Products
WHERE Category = @Category AND Price < @Price;
