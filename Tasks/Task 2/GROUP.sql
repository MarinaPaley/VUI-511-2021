--CUBE
--ROLLUP
--GROUPING SETS
--GROUPING()
SELECT Color
     , Size
     , MIN(ListPrice) AS MinPrice
     , MAX(ListPrice) AS MaxPrice
FROM Production.Product
WHERE ListPrice >0 AND Color IS NOT NULL AND Size IS NOT NULL
GROUP BY Color, Size;

--CUBE
SELECT Color
     , Size
     , MIN(ListPrice) AS MinPrice
     , MAX(ListPrice) AS MaxPrice
FROM Production.Product
WHERE ListPrice >0 AND Color IS NOT NULL AND Size IS NOT NULL
GROUP BY CUBE(Color, Size);
--ROLLUP
SELECT Color
     , Size
     , MIN(ListPrice) AS MinPrice
     , MAX(ListPrice) AS MaxPrice
FROM Production.Product
WHERE ListPrice >0 AND Color IS NOT NULL AND Size IS NOT NULL
GROUP BY ROLLUP(Color, Size);
--GROUPING SETS
SELECT Color
     , Size
     , MIN(ListPrice) AS MinPrice
     , MAX(ListPrice) AS MaxPrice
FROM Production.Product
WHERE ListPrice >0 AND Color IS NOT NULL AND Size IS NOT NULL
GROUP BY GROUPING SETS(Color, Size);
--GROUPING
SELECT Color
     , GROUPING(Color) AS IsColorNULL
     , Size
     , GROUPING(Size) AS IsSizeNULL
     , MIN(ListPrice) AS MinPrice
     , MAX(ListPrice) AS MaxPrice
FROM Production.Product
WHERE ListPrice > 0
GROUP BY ROLLUP(Color, Size);