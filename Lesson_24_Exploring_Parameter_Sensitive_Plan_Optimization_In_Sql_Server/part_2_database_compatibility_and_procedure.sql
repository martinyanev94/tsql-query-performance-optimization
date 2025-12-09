SELECT compatibility_level 
FROM sys.databases 
WHERE name = 'YourDatabaseName';
ALTER DATABASE YourDatabaseName 
SET COMPATIBILITY_LEVEL = 160;
CREATE PROCEDURE GetUserData @UserId INT
AS
BEGIN
    SELECT * 
    FROM Users 
    WHERE UserId = @UserId 
    OPTION (PARAMETER_SENSITIVE_PLAN_OPTIMIZATION ON);
END
