SELECT 
    wait_type, 
    wait_time_ms / 1000.0 AS wait_time_sec,
    waiting_tasks_count AS wait_count,
    100.0 * wait_time_ms / SUM(wait_time_ms) OVER() AS percent_wait
FROM sys.dm_os_wait_stats
WHERE wait_time_ms > 0
ORDER BY wait_time_ms DESC;
