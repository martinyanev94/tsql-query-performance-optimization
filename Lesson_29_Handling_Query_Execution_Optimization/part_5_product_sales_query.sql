SELECT p.Name, s.Quantity
FROM Products p
INNER JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.OrderDate >= '2023-01-01';
