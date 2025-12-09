SELECT 
    req.session_id,
    req.status,
    req.start_time,
    req.command,
    req.cpu_time,
    req.total_elapsed_time,
    txt.text AS query_text,
    qp.query_plan
FROM sys.dm_exec_requests AS req
CROSS APPLY sys.dm_exec_sql_text(req.sql_handle) AS txt
CROSS APPLY sys.dm_exec_query_plan(req.plan_handle) AS qp
WHERE req.session_id > 50;
