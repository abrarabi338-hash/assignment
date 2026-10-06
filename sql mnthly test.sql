use NewDB
select * from [dbo].[MT3 (1)]
 SELECT State,
COUNT(DISTINCT OrderID) AS [Total Orders], SUM(Quantity) AS [Total Quantity], SUM(NetSales) AS [Total Sales],SUM(Profit) AS [Total Profit],
SUM(NetSales) / COUNT(DISTINCT OrderID) AS [Average Order Value]
FROM  [dbo].[MT3 (1)]
WHERE OrderStatus = 'Completed'
GROUP BY State
HAVING SUM(NetSales) > 1000000
ORDER BY SUM(NetSales) DESC;


WITH CustomerSales AS
(
    SELECT CustomerID,CustomerName,SUM(NetSales) AS TotalSales FROM  [dbo].[MT3 (1)]
    WHERE OrderStatus = 'Completed'
    GROUP BY CustomerID, CustomerName
)
SELECT TOP 5 *
FROM CustomerSales
ORDER BY TotalSales DESC;


SELECT 
    State,
    SUM(NetSales) AS TotalSales,
    RANK() OVER (ORDER BY SUM(NetSales) DESC) AS SalesRank
FROM  [dbo].[MT3 (1)]
WHERE OrderStatus = 'Completed'
GROUP BY State
ORDER BY SalesRank;