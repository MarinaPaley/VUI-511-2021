--Показать список моделей продуктов (ProductModelID), которые имеют несколько цветов (Color), из таблицы Production.Product, используя SELF JOIN.

SELECT DISTINCT p1.[Name]
              , p1.Color
              , p1.ProductModelID
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.ProductModelID = p2.ProductModelID
AND p1.Color <> p2.Color;

SELECT *
FROM Goods;

SELECT *
FROM Vendor;

SELECT *
FROM Purshaing;

--CREATE VIEW vPurshsing AS (
--SELECT p.ID
--     , p.ListPrice
--     , g.[Name] AS Goods
--     , v.[Name] AS Vendor
--FROM Purshaing AS p
--INNER JOIN Goods AS g
--ON p.ID_Good = g.ID
--INNER JOIN Vendor AS v
--ON v.ID = p.ID_Vendor);

SELECT *
FROM vPurshsing;

-- Товары, которые продают все производители
SELECT DISTINCT v1.Goods
     , v1.Vendor
FROM [Shop].[dbo].vPurshsing AS v1
INNER JOIN Shop.[dbo].vPurshsing AS v2
ON v1.[Goods] = v2.[Goods]
WHERE v1.Vendor <> v2.Vendor;

-- Кто производит все товары
SELECT DISTINCT v1.Goods
     , v1.Vendor
FROM [Shop].[dbo].vPurshsing AS v1
INNER JOIN Shop.[dbo].vPurshsing AS v2
ON v1.Vendor = v2.Vendor
WHERE v1.[Goods] <> v2.[Goods];
GO
SELECT *
FROM Vendor;