--Показать товары, цена которых выше средней цены (не учитывать товары с ценой, равной нулю) (Таблица Production.Product). Вывести [Name] и ListPrice.

DECLARE @AvgPrice DECIMAL = 
(
    SELECT AVG(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 0
)

--SELECT @AvgPrice

SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE ListPrice > @AvgPrice
ORDER BY ListPrice;

SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE ListPrice > 
(
    SELECT AVG(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 0
)
ORDER BY ListPrice;

--Показать максимальную среди средней цену для цвета
SELECT TOP 1 AVG(ListPrice)
     , Color
FROM Production.Product
WHERE ListPrice > 0
GROUP BY Color
ORDER BY AVG(ListPrice) DESC