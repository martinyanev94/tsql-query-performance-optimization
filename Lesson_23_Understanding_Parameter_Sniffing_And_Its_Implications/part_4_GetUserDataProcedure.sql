CREATE PROCEDURE GetUserData @UserId INT
AS
BEGIN
    SELECT * FROM Users WHERE UserId = @UserId
    OPTION (OPTIMIZE FOR (@UserId = 1000));  -- Optimize for a typical value
END
