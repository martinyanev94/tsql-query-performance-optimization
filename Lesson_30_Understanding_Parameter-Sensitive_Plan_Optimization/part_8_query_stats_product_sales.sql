SELECT * FROM sys.dm_exec_query_stats 
WHERE query_hash = HASHBYTES('SHA1', 'SELECT * FROM Sales.SalesOrderDetail WHERE ProductID = @ProductID');
