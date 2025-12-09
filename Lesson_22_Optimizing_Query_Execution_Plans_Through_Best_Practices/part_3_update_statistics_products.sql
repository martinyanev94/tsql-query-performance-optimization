-- Update statistics for a specific table
UPDATE STATISTICS Products;
SELECT name,
       stats_date(object_id, name) AS last_updated
FROM sys.stats
WHERE object_id = OBJECT_ID('dbo.Products');
