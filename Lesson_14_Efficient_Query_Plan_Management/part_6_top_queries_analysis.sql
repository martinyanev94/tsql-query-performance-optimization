SELECT TOP 10 
    qs.execution_count,
    qs.total_elapsed_time / qs.execution_count AS avg_elapsed_time,
    st.text AS sql_text
FROM 
    sys.dm_exec_query_stats AS qs
CROSS APPLY 
    sys.dm_exec_sql_text(qs.sql_handle) AS st
ORDER BY 
    avg_elapsed_time DESC;
SELECT * 
FROM Orders 
OPTION (RECOMPILE);
