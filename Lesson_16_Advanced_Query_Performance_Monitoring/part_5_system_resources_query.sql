SELECT 
    cpu_count,
    hyperthread_ratio,
    physical_memory_kb / 1024 AS physical_memory_mb,
    virtual_memory_kb / 1024 AS virtual_memory_mb
FROM 
    sys.dm_os_sys_info;
