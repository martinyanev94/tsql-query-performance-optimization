DECLARE @StartDate DATETIME, @EndDate DATETIME;
SET @StartDate = '2023-01-01';
SET @EndDate = '2023-01-31';

SELECT * FROM Orders 
WHERE OrderDate BETWEEN @StartDate AND @EndDate;
