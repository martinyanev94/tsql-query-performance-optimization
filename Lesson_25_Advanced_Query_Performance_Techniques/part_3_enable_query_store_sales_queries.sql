ALTER DATABASE YourDatabaseName SET QUERY_STORE = ON;
SELECT *
FROM sys.query_store_query AS q
JOIN sys.query_store_query_text AS qt ON q.query_text_id = qt.query_text_id
JOIN sys.query_store_plan AS p ON q.query_id = p.query_id
WHERE qt.query_sql_text LIKE '%Sales%'
ORDER BY q.last_execution_time DESC;
