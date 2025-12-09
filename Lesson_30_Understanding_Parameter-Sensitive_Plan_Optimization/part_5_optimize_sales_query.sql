-- Clear the cache to see the optimization in action
DBCC FREEPROCCACHE;

-- Creating a parameterized query
EXEC GetSalesByProduct @ProductID = 1;  -- High-traffic product
EXEC GetSalesByProduct @ProductID = 2;  -- Low-traffic product
