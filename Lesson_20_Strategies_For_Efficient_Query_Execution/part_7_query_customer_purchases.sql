SELECT p.PurchaseID, c.CustomerName, pr.ProductName
FROM Purchases AS p
JOIN Customers AS c ON p.CustomerID = c.CustomerID
JOIN Products AS pr ON p.ProductID = pr.ProductID
WHERE c.CustomerID = @CustomerID;
