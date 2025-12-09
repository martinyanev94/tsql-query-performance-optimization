SELECT 
    session_id,
    wait_type,
    wait_time,
    wait_resource,
    blocking_session_id,
    status,
    command,
    estimated_completion_time
FROM 
    sys.dm_exec_requests
WHERE 
    wait_type IS NOT NULL;
