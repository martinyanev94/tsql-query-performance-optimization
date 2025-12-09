ALTER DATABASE YourDatabaseName
SET QUERY_STORE = ON;
SELECT 
    q.query_id,
    qt.query_sql_text,
    qs.avg_duration,
    qs.avg_cpu_time,
    qs.avg_logical_io
FROM 
    sys.query_store_query AS q
JOIN 
    sys.query_store_query_text AS qt ON q.query_text_id = qt.query_text_id
JOIN 
    sys.query_store_query_runtime_stats AS qs ON q.query_id = qs.query_id
ORDER BY 
    qs.avg_duration DESC;
