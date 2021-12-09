--5.	Показать список цветов (Color), которые имеют несколько моделей продуктов (ProductModelID), из таблицы Production.Product, используя SELF JOIN.
SELECT DISTINCT p1.[Name]
              , p1.Color
              , p1.ProductModelID
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.Color = p2.Color
AND p1.ProductModelID <> p2.ProductModelID;