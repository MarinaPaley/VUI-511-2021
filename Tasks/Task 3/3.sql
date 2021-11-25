--Показать список товаров (поле Name), в котором указано, есть ли у товара тип продажи (TransactionType) или нет, из таблиц Production.TransactionHistory, Production.Product, используя RIGHT OUTER JOIN.
SELECT DISTINCT p.[Name]
FROM Production.Product AS p
RIGHT OUTER JOIN Production.TransactionHistory AS t
ON p.ProductID = t.ProductID
WHERE t.TransactionType IS NOT NULL;