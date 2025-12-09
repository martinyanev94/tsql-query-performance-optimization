-- Enabling parameter-sensitive plan optimization
ALTER DATABASE YourDatabase
SET PARAMETER_SENSITIVE_PLAN_OPTIMIZATION = ON;

-- Executing the stored procedure with different region parameters
EXEC GetCustomerDetails @Region = 'East';
EXEC GetCustomerDetails @Region = 'West';
EXEC GetCustomerDetails @Region = 'Central';
