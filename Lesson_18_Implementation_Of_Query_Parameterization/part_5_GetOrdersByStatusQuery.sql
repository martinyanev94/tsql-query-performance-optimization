SELECT TOP 100
    qs.query_hash,
    qs.execution_count,
    qs.total_elapsed_time,
    q.text AS query_text,
    qp.query_plan
FROM sys.dm_exec_query_stats AS qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) AS q
CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle) AS qp
WHERE q.text LIKE '%GetOrdersByStatus%'
ORDER BY qs.total_elapsed_time DESC;
