CREATE TABLE Roles
(
    ID int PRIMARY KEY
  , Roles NVARCHAR(50) NOT NULL UNIQUE
);

ALTER TABLE Roles
ADD CONSTRAINT roles_unique UNIQUE (Roles);