CREATE EVENT SESSION MonitorQueryPerformance 
ON SERVER 
ADD EVENT sqlserver.sql_statement_completed
(
    ACTION(sqlserver.sql_text, sqlserver.database_id)
    WHERE sqlserver.database_id = DB_ID('YourDatabaseName')
)
ADD TARGET sqlserver.event_file(SET filename = 'C:\SQL\Monitoring\MonitorQueryPerformance.xel')
WITH (MAX_MEMORY=4096 KB, EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS, MAX_DISPATCH_LATENCY=1 SECONDS);
GO

ALTER EVENT SESSION MonitorQueryPerformance ON SERVER STATE = START;
GO
ALTER EVENT SESSION MonitorQueryPerformance ON SERVER STATE = STOP;
