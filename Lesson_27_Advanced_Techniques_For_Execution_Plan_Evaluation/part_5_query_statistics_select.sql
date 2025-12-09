SELECT
    qs.execution_count,
    qs.total_worker_time,
    qs.total_elapsed_time,
    qs.total_logical_reads,
    qs.total_logical_writes,
    SUBSTRING(qt.text, (qs.statement_start_offset/2) + 1, 
    ((CASE qs.statement_end_offset 
      WHEN -1 THEN DATALENGTH(qt.text) 
      ELSE qs.statement_end_offset 
      END - qs.statement_start_offset)/2) + 1)) AS query_text
FROM 
    sys.dm_exec_query_stats AS qs
CROSS APPLY 
    sys.dm_exec_sql_text(qs.sql_handle) AS qt
WHERE 
    qt.text LIKE '%SELECT%';
