SELECT * FROM Users WHERE UserID = 1; DROP TABLE Users; --
DECLARE @Username NVARCHAR(50);
SET @Username = 'John''s Coffee';

SELECT * FROM Orders WHERE CustomerName = @Username;
