--3.	Показать товар ([Name]) с минимальной разницей Стоимости последнего поступления (LastReceiptCost) и Стандартной стоимости (StandardPrice) (Таблица Purchasing.ProductVendor)
SELECT p.[Name]
FROM Purchasing.ProductVendor AS v
INNER JOIN Production.Product AS p
ON v.ProductID = p.ProductID
WHERE ABS(v.LastReceiptCost - v.StandardPrice) = 
(
    SELECT TOP 1 MIN(ABS(LastReceiptCost - StandardPrice))
    FROM Purchasing.ProductVendor
    WHERE ABS(LastReceiptCost - StandardPrice) > 0
    GROUP BY ProductID
    ORDER BY 1
)