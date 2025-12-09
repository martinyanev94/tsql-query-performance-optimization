ALTER DATABASE YourDatabaseName SET QUERY_STORE = ON;
SELECT 
    qs.query_id,
    qs.query_text_id,
    qt.query_text,
    qp.query_plan,
    qs.avg_duration
FROM 
    sys.query_store_query_text AS qt
JOIN 
    sys.query_store_query AS qs ON qt.query_text_id = qs.query_text_id
JOIN 
    sys.query_store_plan AS qp ON qs.query_id = qp.query_id
ORDER BY 
    qs.avg_duration DESC;
