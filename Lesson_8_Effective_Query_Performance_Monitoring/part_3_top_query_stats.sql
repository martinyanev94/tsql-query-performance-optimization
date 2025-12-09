SELECT TOP 10 
    total_worker_time AS cpu_time, 
    total_elapsed_time AS duration,
    execution_count,
    (total_elapsed_time / execution_count) AS avg_duration,
    sql_handle
FROM sys.dm_exec_query_stats
ORDER BY total_worker_time DESC;
