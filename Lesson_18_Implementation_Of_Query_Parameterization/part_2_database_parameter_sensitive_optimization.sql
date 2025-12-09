SELECT name, is_parameter_sensitive_plan_optimization_on
FROM sys.databases
WHERE name = 'YourDatabaseName';
ALTER DATABASE YourDatabaseName
SET PARAMETER_SENSITIVE_PLAN_OPTIMIZATION = ON;
