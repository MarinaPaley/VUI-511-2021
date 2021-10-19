--Из таблицы Production.[Location] показать ID местоположения и название магазина (LocationID и [Name]). Название магазина должно быть или Metal Storage, или Paint Storage, или Finished Goods Storage. Использовать оператор IN.
SELECT LocationID
     , [Name]
FROM Production.[Location]
WHERE [Name] IN ('Metal Storage', 'Paint Storage', 'Finished Goods Storage');