SELECT 
    DB_NAME(database_id) AS Database_Name,
    object_name(object_id) AS Table_Name,
    index_id,
    name AS Index_Name,
    avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'DETAILED')
ORDER BY avg_fragmentation_in_percent DESC;
ALTER INDEX IX_Employees_JobTitle_LastName ON Employees REBUILD;
ALTER INDEX IX_Employees_JobTitle_LastName ON Employees REORGANIZE;
