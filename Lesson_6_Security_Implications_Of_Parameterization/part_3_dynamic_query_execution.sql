DECLARE @SQL NVARCHAR(MAX);
SET @SQL = 'SELECT * FROM Users WHERE UserID = @UserID';

EXEC sp_executesql @SQL, N'@UserID INT', @UserID = 1;
