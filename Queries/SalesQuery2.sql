SELECT P.ProductName, S.Amount  as TotalSales, DATE(S.SalesDateTime) as SalesDate
FROM Products as P
INNER JOIN Sales as S
ON P.ProductId = S.ProductId
ORDER BY S.SalesDateTime DESC
LIMIT 4;