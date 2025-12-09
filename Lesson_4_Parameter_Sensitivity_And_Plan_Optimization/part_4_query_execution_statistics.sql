SELECT 
    cp.objtype AS plan_type,
    qp.query_plan,
    cp.usecounts AS execution_count
FROM sys.dm_exec_cached_plans cp
CROSS APPLY sys.dm_exec_query_plan(cp.plan_handle) qp
WHERE cp.objtype = 'Adhoc'
   OR cp.objtype = 'Compiled'
ORDER BY cp.usecounts DESC;
EXEC GetOrdersByDateAndRegion '2023-01-01', '2023-01-31', 'North America';
EXEC GetOrdersByDateAndRegion '2023-01-01', '2023-01-31', 'Europe';
