SELECT 
    cp.plan_handle, 
    st.text AS [SQL Text], 
    qp.query_plan
FROM 
    sys.dm_exec_cached_plans AS cp
CROSS APPLY 
    sys.dm_exec_sql_text(cp.plan_handle) AS st
CROSS APPLY 
    sys.dm_exec_query_plan(cp.plan_handle) AS qp
WHERE 
    cp.objtype = 'Adhoc';
