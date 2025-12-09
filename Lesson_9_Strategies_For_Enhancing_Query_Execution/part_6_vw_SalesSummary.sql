CREATE VIEW vw_SalesSummary
WITH SCHEMABINDING
AS
SELECT Category, SUM(Price) AS TotalRevenue
FROM dbo.Products
GROUP BY Category;

CREATE UNIQUE CLUSTERED INDEX IX_SalesSummary ON vw_SalesSummary(Category);
