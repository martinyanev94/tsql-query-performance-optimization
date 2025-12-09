SELECT SQL.TEXT, QS.execution_count, QS.total_worker_time, 
       QS.total_elapsed_time, QP.query_plan
FROM sys.dm_exec_query_stats AS QS
CROSS APPLY sys.dm_exec_sql_text(QS.sql_handle) AS SQL
CROSS APPLY sys.dm_exec_query_plan(QS.plan_handle) AS QP
WHERE SQL.text LIKE '%GetCustomerSales%';
