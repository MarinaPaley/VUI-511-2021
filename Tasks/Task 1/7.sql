--Показать поля BusinessEntityID, PersonType, Title и LastName из таблицы Person.Person. Все неизвестные значения поля Title заменить на 'Dear.'. Названия полей оставить без изменения.
SELECT BusinessEntityID
     , PersonType
     , ISNULL(Title, 'Dear.')
     , LastName
FROM Person.Person;