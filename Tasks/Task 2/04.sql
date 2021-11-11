--Вывести профессии из таблицы HumanResources.Employee, где суммарное количество человек, принятых до 2009 года, больше 1
SELECT JobTitle
     , COUNT(JobTitle)
FROM HumanResources.Employee
WHERE HireDate < '2009'
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1;

SELECT JobTitle
FROM HumanResources.Employee
WHERE JobTitle IS NULL