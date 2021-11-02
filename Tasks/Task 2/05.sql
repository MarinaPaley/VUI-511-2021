--ROW_NUMBER()
SELECT ROW_NUMBER() OVER (ORDER BY Size) AS N
     , [Name]
     , ListPrice
     , [Weight]
     , Size
FROM Production.Product
WHERE ListPrice >0 AND [Weight] IS NOT NULL AND Size IS NOT NULL;

--PARTITION
SELECT ROW_NUMBER() OVER (PARTITION BY [Weight] ORDER BY Size) AS N
     , [Name]
     , ListPrice
     , [Weight]
     , Size
FROM Production.Product
WHERE ListPrice >0 AND [Weight] IS NOT NULL AND Size IS NOT NULL
ORDER BY 1;

--RANK()
SELECT RANK() OVER (PARTITION BY Color ORDER BY Size) AS N
     , [Name]
     , ListPrice
     , [Weight]
     , Size
     , Color
FROM Production.Product
WHERE ListPrice >0 AND [Weight] IS NOT NULL AND Size IS NOT NULL
ORDER BY 1;

SELECT RANK() OVER (ORDER BY Size) AS N
     , [Name]
     , ListPrice
     , [Weight]
     , Size
FROM Production.Product
WHERE ListPrice >0 AND [Weight] IS NOT NULL AND Size IS NOT NULL;


--DENSE_RANK()
SELECT DENSE_RANK() OVER (ORDER BY Size) AS N
     , [Name]
     , ListPrice
     , [Weight]
     , Size
FROM Production.Product
WHERE ListPrice >0 AND [Weight] IS NOT NULL AND Size IS NOT NULL;

--NTILE()
SELECT NTILE(5) OVER (ORDER BY Size) N
     , [Name]
     , ListPrice
     , [Weight]
     , Size
FROM Production.Product
WHERE ListPrice >0 AND [Weight] IS NOT NULL AND Size IS NOT NULL;