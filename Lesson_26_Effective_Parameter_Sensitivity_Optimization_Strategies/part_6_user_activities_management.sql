CREATE TABLE UserActivities (
    ActivityID INT PRIMARY KEY,
    UserID INT,
    ActivityDate DATETIME,
    Action NVARCHAR(50)
);
DECLARE @UserID INT = 10;
DECLARE @StartDate DATETIME = '2023-01-01';
DECLARE @EndDate DATETIME = '2023-12-31';
SELECT * FROM UserActivities 
WHERE UserID = @UserID AND ActivityDate BETWEEN @StartDate AND @EndDate;
CREATE NONCLUSTERED INDEX IDX_UserID_ActivityDate
ON UserActivities(UserID, ActivityDate);
CREATE NONCLUSTERED INDEX IDX_Filtered_RecentActivities
ON UserActivities(UserID)
WHERE ActivityDate >= GETDATE() - 30;
