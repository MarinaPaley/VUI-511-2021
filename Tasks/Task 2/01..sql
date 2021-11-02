--Найти максимальный размер из таблицы Production.Product
SELECT MAX(Size) AS MaxSize
     , MIN(Size) AS MinSize
     , SUM (ListPrice) AS SumSize
FROM Production.Product;

CREATE DATABASE Example;
CREATE TABLE Table1 (
    Id INT PRIMARY KEY
  , Title NVARCHAR(50));
INSERT INTO Table1 VALUES (1, '1'), (2, '2'), (3, 'XL'), (4, 'XS');
SELECT * FROM Table1;

SELECT MIN(Title)
FROM Table1;

SELECT MAX(Title)
FROM Table1;

--SELECT AVG(Title)
--FROM Table1;