--Найти количество магазинов с CostRate, который не превышает 15, из таблицы Production.Location.
SELECT COUNT([Name]) AS ShopCount
FROM Production.[Location]
WHERE CostRate <= 15;

SELECT COUNT(Color)
FROM Production.Product;

SELECT COUNT(ISNULL(Color, 0))
FROM Production.Product
WHERE Color IS NULL;

SELECT COUNT(*)
FROM Production.Product
WHERE Color IS NULL;