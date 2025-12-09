SELECT session_id, status, wait_type, wait_time, cpu_time, total_elapsed_time
FROM sys.dm_exec_requests
WHERE session_id > 50;  -- Exclude system sessions
