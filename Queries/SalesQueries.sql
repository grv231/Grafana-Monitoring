SELECT unix_timestamp(S.SalesDateTime) AS time_sec,  P.ProductName as metric, Sum(S.Amount) as value
FROM Products as P
INNER JOIN Sales as S
ON P.ProductId = S.ProductId
GROUP BY P.ProductName, S.SalesDateTime;