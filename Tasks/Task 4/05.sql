--5.	Показать товары, цена которых (больше нуля) меньше средней цены в любом размере (размер определен) (Таблица Production.Product). Показать поля [Name], ListPrice и Size.
--ANY (SOME), ALL
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE ListPrice > 0
AND ListPrice < 2504.885
EXCEPT
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE ListPrice > 0
AND ListPrice < ANY 
(
    SELECT AVG(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 0
    GROUP BY Size
)
