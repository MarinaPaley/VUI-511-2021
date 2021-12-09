-- Показать список продуктов (поле Name), в котором указано, есть ли у продукта количество (OrderQty) на складе или нет, из таблиц Production.Product, Production.WorkOrder, используя LEFT OUTER JOIN.

SELECT DISTINCT p.[Name]
FROM Production.Product AS p
LEFT OUTER JOIN Production.WorkOrder AS w
ON p.ProductID = w.ProductID
WHERE w.OrderQty > 0;

SELECT *
FROM Buy;

SELECT  *
FROM Sale;

SELECT s.*
     , b.*
FROM Sale AS s
LEFT OUTER JOIN Buy AS b
ON s.[Date] = b.[Date];

SELECT s.*
     , b.*
FROM Buy AS b
LEFT OUTER JOIN Sale AS s
ON s.[Date] = b.[Date];

SELECT s.*
     , ISNULL(s.Amount * s.Price , 0) AS Sale
     , b.*
     , ISNULL(b.Amount * b.Price, 0) AS Buy
     , ISNULL(s.Amount * s.Price , 0) - ISNULL(b.Amount * b.Price, 0) AS Total
FROM Buy AS b
FULL OUTER JOIN Sale AS s
ON s.[Date] = b.[Date];