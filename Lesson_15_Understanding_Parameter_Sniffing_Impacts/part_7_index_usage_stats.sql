SELECT 
    OBJECT_NAME(i.object_id) AS TableName,
    i.name AS IndexName,
    s.user_seeks,
    s.user_scans,
    s.user_updates
FROM 
    sys.indexes AS i
JOIN 
    sys.dm_db_index_usage_stats AS s 
ON 
    i.object_id = s.object_id AND i.index_id = s.index_id
WHERE 
    OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1
ORDER BY 
    user_seeks DESC;
