CREATE TABLE Persons
(
    ID INT PRIMARY KEY
  , FirstName NVARCHAR(50) NOT NULL
  , MiddleName NVARCHAR(50)
  , FamilyName NVARCHAR(50) NOT NULL
  , BirthDate DATE NOT NULL
);