ALTER DATABASE YourDatabaseName
SET QUERY_STORE = ON;
SELECT TOP 10 
       qs.query_id,
       q.query_sql_text,
       qs.avg_duration,
       qs.execution_count
FROM sys.query_store_query_text AS qt
JOIN sys.query_store_query AS q ON qt.query_text_id = q.query_text_id
JOIN sys.query_store_query_plan AS qp ON q.query_id = qp.query_id
JOIN sys.query_store_runtime_stats AS qs ON qp.query_plan_id = qs.query_plan_id
ORDER BY qs.avg_duration DESC;
