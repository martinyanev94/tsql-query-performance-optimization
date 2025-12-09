SELECT * 
FROM Customers 
WHERE CustomerID = 1;
SELECT * 
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_query_plan(cp.plan_handle) AS qp
WHERE qp.objectid = OBJECT_ID('Customers');
