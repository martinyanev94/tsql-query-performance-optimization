CREATE PROCEDURE GetUserData @UserId INT
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = N'SELECT * FROM Users WHERE UserId = @UserId';
    
    EXEC sp_executesql @sql, N'@UserId INT', @UserId;
END
