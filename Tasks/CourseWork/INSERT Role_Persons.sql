INSERT INTO Persons_Roles
VALUES 
  (1, 2, 1)
, (2, 1, 2)
, (3, 3 ,3);

DELETE 
FROM Persons_Roles;

SELECT p.FamilyName
     , p.FirstName
     , p.MiddleName
     , p.BirthDate
     , r.Roles
FROM Persons_Roles AS pr
INNER JOIN Persons AS p
ON p.ID = pr.ID_Person
INNER JOIN Roles AS r
ON r.ID = pr.ID_Role;