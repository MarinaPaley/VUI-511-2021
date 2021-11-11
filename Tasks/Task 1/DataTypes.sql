--INT
DECLARE @I1 INT = 5;
SET @I1 = 6;
SELECT @I1;
PRINT @I1;

--DOUBLE
DECLARE @D DECIMAL(6,2) = 3.1415;
SELECT @D;

--DATE
DECLARE @Date1 DATE= GETDATE();
SELECT @Date1;
DECLARE @Date2 DATE = '2021-10-01';
SELECT @Date2;
SELECT DATEDIFF(DAY,@Date2, @Date1) AS [Days from 1 October];



--CHAR(MAX)
DECLARE @C1 CHAR(20) = '1231';
--SELECT @C1;
SET @I1 = @C1;
SELECT @C1 AS [Implicitly to INT];
SET @D = @C1;
SELECT @C1 AS [Implicitly to Double];
DECLARE @C2 CHAR(20) = '1231';
SELECT @C1 + @C2;

--VARCHAR(MAX)
DECLARE @VARC1 VARCHAR(20) = '1231';
DECLARE @VARC2 VARCHAR(20) = '1231';
SELECT @VARC1 + @VARC2;

--NCHAR(MAX)
DECLARE @NC1 NCHAR(20) = 'гггг';
DECLARE @NC2 NCHAR(20) = 'ццц';
SELECT @NC1 + @NC2;

--VARCHAR(MAX)
DECLARE @NVARC1 NVARCHAR(20) = '1231';
DECLARE @NVARC2 NVARCHAR(20) = '1231';
SELECT @NVARC1 + @NVARC2;

--CAST
DECLARE @I3 INT
SET @I3 = CAST(@NVARC1 AS INT);
SELECT @I3 AS [Cast]

--CONVERT
DECLARE @Date3 DATE= GETDATE();
SELECT CONVERT(VARCHAR(20), @Date3, 104);

--COALESCE
SELECT
    [Name]
  , Style
  , Class
  , ProductLine
  , Color
  , [Weight]
  , COALESCE(Style, Class, ProductLine, Color
      ,CAST([Weight] AS NVARCHAR(10)))
FROM Production.Product;