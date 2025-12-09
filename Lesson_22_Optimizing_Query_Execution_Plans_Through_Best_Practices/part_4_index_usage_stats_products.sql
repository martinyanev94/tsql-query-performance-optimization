CREATE NONCLUSTERED INDEX IX_Products_CategoryID
ON Products (CategoryID);
SELECT OBJECT_NAME(i.object_id) AS TableName,
       i.name AS IndexName,
       user_seeks,
       user_scans,
       user_lookups,
       user_updates
FROM sys.dm_db_index_usage_stats AS s
JOIN sys.indexes AS i ON s.object_id = i.object_id AND s.index_id = i.index_id
WHERE OBJECT_NAME(i.object_id) = 'Products';
