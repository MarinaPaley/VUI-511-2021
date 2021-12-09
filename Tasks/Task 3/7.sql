--7.	Показать комбинированный список таблиц Sales.SalesOrderDetail по полям SalesOrderID, UnitPrice, Sales.SalesOrderHeader по полям SalesOrderID, SubTotal, используя UNION.
SELECT SalesOrderID, UnitPrice
FROM Sales.SalesOrderDetail
UNION
SELECT SalesOrderID, SubTotal
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, UnitPrice
FROM Sales.SalesOrderDetail
INTERSECT
SELECT SalesOrderID, SubTotal
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, UnitPrice
FROM Sales.SalesOrderDetail
EXCEPT
SELECT SalesOrderID, SubTotal
FROM Sales.SalesOrderHeader;

CREATE TABLE A (A int);
CREATE TABLE B (B int);
INSERT INTO [dbo].[A] VALUES (1), (2), (3), (4);
INSERT INTO [dbo].B VALUES (1), (5), (3), (6);

SELECT *
FROM A;
SELECT *
FROM B;

SELECT *
FROM A
UNION
SELECT *
FROM B;

SELECT *
FROM A
UNION ALL
SELECT *
FROM B;

SELECT *
FROM A
INTERSECT
SELECT *
FROM B;

SELECT *
FROM A
EXCEPT
SELECT *
FROM B;

SELECT *
FROM B
EXCEPT
SELECT *
FROM A;

SELECT A.A, B.B
FROM A
LEFT OUTER JOIN B
ON A.A = B.B;

SELECT A.A, B.B
FROM A
RIGHT OUTER JOIN B
ON A.A = B.B;

SELECT A.A, B.B
FROM A
FULL OUTER JOIN B
ON A.A = B.B;

SELECT A.A, B.B
FROM A
INNER JOIN B
ON A.A = B.B;