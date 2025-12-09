SELECT cp.plan_handle,
       cp.size_in_bytes,
       cp.objtype,
       cp.usecounts
FROM sys.dm_exec_cached_plans AS cp
ORDER BY cp.usecounts DESC;
