--Показать минимальную цену товара в каждой линейке продуктов ProductLine из таблицы Production.Product (из выборки исключить пустые поля).
SELECT MIN(ListPrice) AS [Min]
     , ProductLine
FROM Production.Product
WHERE ListPrice > 0 AND ProductLine IS NOT NULL
GROUP BY ProductLine;