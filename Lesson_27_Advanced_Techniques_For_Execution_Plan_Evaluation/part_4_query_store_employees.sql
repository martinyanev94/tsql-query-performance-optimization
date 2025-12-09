ALTER DATABASE YourDatabaseName
SET QUERY_STORE = ON;
SELECT 
    qs.query_id,
    qs.plan_id,
    q.query_sql_text,
    q.avg_duration 
FROM 
    sys.query_store_query_text AS q
JOIN 
    sys.query_store_query AS qs 
    ON q.query_text_id = qs.query_text_id
WHERE 
    q.query_sql_text LIKE '%Employees%';
