DECLARE @StartTime DATETIME, @EndTime DATETIME;

SET @StartTime = GETDATE();
EXEC yourProcedureWithRecompile @SomeParam;
SET @EndTime = GETDATE();
PRINT DATEDIFF(MILLISECOND, @StartTime, @EndTime);

SET @StartTime = GETDATE();
EXEC yourProcedureWithLocalVariable @SomeParam;
SET @EndTime = GETDATE();
PRINT DATEDIFF(MILLISECOND, @StartTime, @EndTime);
