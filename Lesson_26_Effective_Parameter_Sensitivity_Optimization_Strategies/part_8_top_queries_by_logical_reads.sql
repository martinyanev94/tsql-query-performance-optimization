SELECT TOP 10 
    total_logical_reads,
    total_exec_count,
    query_text,
    last_execution_time
FROM sys.query_store_query
ORDER BY total_logical_reads DESC;
