SELECT TOP 10 
    qs.execution_count,
    qs.total_worker_time,
    qs.total_elapsed_time,
    SUBSTRING(qt.text,qs.statement_start_offset/2+1,
        (CASE 
            WHEN qs.statement_end_offset = -1 
            THEN DATALENGTH(qt.text)
            ELSE qs.statement_end_offset 
        END - qs.statement_start_offset)/2 + 1) AS statement_text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
ORDER BY qs.total_worker_time DESC;
