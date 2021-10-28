--Показать поля ProductID, [Name] из таблицы Production.Product с применением функции COALESCE(). Показать поле LastDate , так, чтобы, если значение в поле SellEndDate известно, то показать его, а иначе, показать значение в поле DiscontinuedDate. Если и в поле DiscontinuedDate значение неизвестно, то вывести текущую дату.
SELECT ProductID
     , [Name]
     , COALESCE(SellEndDate, DiscontinuedDate, GETDATE()) AS LastDate
FROM Production.Product;