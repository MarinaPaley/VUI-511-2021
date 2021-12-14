--4.	Показать товары, цена которых равна минимальной (больше нуля) цене товара того же веса (вес определен). Показать поля [Name], ListPrice и [Weight].
SELECT p1.[Name]
     , p1.ListPrice
     , p1.[Weight]
FROM Production.Product AS p1
WHERE p1.ListPrice = 
(
    SELECT MIN(p2.ListPrice)
    FROM Production.Product AS p2
    WHERE p2.ListPrice > 0
    AND p2.[Weight] = p1.[Weight])

SELECT MIN(p2.ListPrice)
     , p2.Size
FROM Production.Product AS p2
WHERE p2.ListPrice > 0
GROUP BY p2.Size

SELECT p1.[Name]
     , p1.ListPrice
     , p1.Size
FROM Production.Product p1
WHERE p1.Size = 'L'
AND p1.ListPrice = 
(
SELECT MIN(p2.ListPrice)
FROM Production.Product AS p2
WHERE p2.ListPrice > 0 AND p2.Size = 'L')