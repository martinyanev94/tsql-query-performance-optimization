SELECT 
    r.session_id,
    r.status,
    r.command,
    r.cpu_time,
    r.total_elapsed_time,
    r.start_time
FROM 
    sys.dm_exec_requests AS r
WHERE 
    r.status = 'running';
