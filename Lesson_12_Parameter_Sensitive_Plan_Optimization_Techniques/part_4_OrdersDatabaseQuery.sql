CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);
SELECT OrderID, TotalAmount 
FROM Orders 
WHERE CustomerID = @CustomerID;
