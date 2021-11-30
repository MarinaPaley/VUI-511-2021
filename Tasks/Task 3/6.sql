--6.	Показать список продуктов (ProductID), которые имеют несколько скидок на единицу продукции (UnitPriceDiscount), из таблицы Sales.SalesOrderDetail, используя SELF JOIN. Значение скидки не меньше 0,15.
SELECT DISTINCT s1.ProductID
              , s1.UnitPriceDiscount
FROM Sales.SalesOrderDetail AS s1
INNER JOIN Sales.SalesOrderDetail AS s2
ON s1.ProductID = s2.ProductID
AND s1.UnitPriceDiscount <> s2.UnitPriceDiscount
WHERE s1.UnitPriceDiscount > 0.15
ORDER BY s1.ProductID