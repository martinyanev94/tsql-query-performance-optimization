SELECT 
    DB_NAME(database_id) AS DatabaseName,
    OBJECT_NAME(object_id) AS TableName,
    index_id,
    name AS IndexName,
    avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL);
ALTER INDEX IDX_CategoryID_Price ON Products REBUILD;
ALTER INDEX IDX_CategoryID_Price ON Products REORGANIZE;
