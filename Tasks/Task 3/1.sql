--INNER JOIN
--СТАРЫЙ СТИЛЬ, МОЖНО СДЕЛАТЬ ОШИБКУ
SELECT a.AddressTypeID
     , a.[Name]
     , b.BusinessEntityID
FROM Person.AddressType AS a, Person.BusinessEntityAddress AS b
WHERE a.AddressTypeID = b.AddressTypeID

SELECT a.AddressTypeID
     , a.[Name]
     , b.BusinessEntityID
FROM Person.AddressType AS a
INNER JOIN Person.BusinessEntityAddress AS b
ON a.AddressTypeID = b.AddressTypeID;

--Показать квоту продаж (SalesQuota) и поля FirstName, LastName из таблиц Person.Person, Sales.SalesPerson.
SELECT p.FirstName
     , p.LastName
     , s.SalesQuota
FROM Person.Person AS p
INNER JOIN Sales.SalesPerson AS s
ON p.BusinessEntityID = s.BusinessEntityID;

SELECT s.SalesQuota AS SalesQuota
     , s.Bonus
     , s.BusinessEntityID AS SalesID
     , h.BusinessEntityID AS HistoryID
     , h.SalesQuota AS HistoryQuota
FROM Sales.SalesPerson AS s
INNER JOIN Sales.SalesPersonQuotaHistory AS h
ON s.BusinessEntityID = h.BusinessEntityID;

SELECT s.SalesQuota AS SalesQuota
     , s.Bonus
     , s.BusinessEntityID AS SalesID
     , h.BusinessEntityID AS HistoryID
     , h.SalesQuota AS HistoryQuota
FROM Sales.SalesPerson AS s
INNER JOIN Sales.SalesPersonQuotaHistory AS h
ON s.SalesQuota = h.SalesQuota;

SELECT DISTINCT p1.Class
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.Color = p2.Color;