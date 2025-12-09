SELECT
    qs.sql_handle,
    qs.execution_count,
    qs.total_worker_time,
    qs.total_elapsed_time,
    qp.query_plan
FROM sys.dm_exec_query_stats AS qs
CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle) AS qp
WHERE qp.query_plan IS NOT NULL;
