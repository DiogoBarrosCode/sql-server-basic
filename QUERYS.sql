
--SELECT SIMPLES
SELECT * FROM Person.Person;

SELECT title FROM Person.Person;

SELECT * FROM PERSON.EmailAddress;

SELECT LastName, FirstName FROM PERSON.PERSON;


--DISTINÇÃO E AGRUPAMENTO
SELECT DISTINCT LastName, FirstName FROM PERSON.PERSON;

SELECT LastName, FirstName FROM PERSON.PERSON GROUP BY LastName, FirstName;


--SELECT COM CONDIÇÕES
SELECT * FROM person.Person where FirstName='Anna' and LastName = 'miller';

SELECT * FROM Production.Product where Color='black' OR Color='blue';

SELECT * FROM Production.Product where ListPrice > 1500;

SELECT * FROM Production.Product where ListPrice > 1500 and ListPrice < 5000;

SELECT * FROM Production.Product where Color <> 'red';

SELECT ProductID, Name, Weight FROM Production.Product where Weight > 500 and Weight < 700;


--COUNT
SELECT count(title) FROM Person.Person;

SELECT count(Distinct title) FROM Person.Person;

--
SELECT count(FirstName) FROM Person.Person;

SELECT count(Distinct FirstName) FROM Person.Person;
 
 --
SELECT count(*) FROM Production.Product;

SELECT count(Size) FROM Production.Product;

SELECT count(Distinct Size) FROM Production.Product;


--TOP
SELECT TOP 10 * FROM Production.Product;


--ORDER BY
SELECT FirstName, LastName FROM person.Person ORDER BY LastName ASC;

SELECT FirstName, LastName FROM person.Person ORDER BY LastName DESC;

SELECT TOP 10 ProductID, NAME, ListPrice FROM Production.Product ORDER BY ListPrice DESC;


--BETWEEN
SELECT ListPrice, * FROM Production.Product WHERE ListPrice BETWEEN 1000 AND 1500;

SELECT ListPrice, * FROM Production.Product WHERE ListPrice NOT BETWEEN 1000 AND 1500;

--
SELECT HireDate, * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'


--IN
SELECT * FROM Person.Person WHERE BusinessEntityID IN(2, 7, 13);

SELECT * FROM Person.Person WHERE BusinessEntityID NOT IN(2, 7, 13);


--LIKE
SELECT * FROM Person.Person WHERE FirstName LIKE 'OVI%';

SELECT * FROM Person.Person WHERE FirstName LIKE '%TO';

SELECT * FROM Person.Person WHERE FirstName LIKE '%ESSA%';

SELECT * FROM Person.Person WHERE FirstName LIKE '%RO_'


--EXER
SELECT  COUNT(ListPrice) FROM Production.Product WHERE LISTPRICE > 1500;

SELECT COUNT(LastName) AS NOME FROM Person.Person WHERE LastName LIKE 'P%';
SELECT COUNT(DISTINCT LastName) AS NOME FROM Person.Person WHERE LastName LIKE 'P%';

SELECT COUNT(DISTINCT City) FROM Person.Address;

SELECT DISTINCT CITY FROM Person.Address ORDER BY CITY;

SELECT COUNT(*) FROM Production.Product WHERE Color='RED' AND ListPrice BETWEEN 500 AND 1000;

SELECT COUNT(*) from Production.Product WHERE Name LIKE'%ROAD%';



--MIN MAX SUM AVG

--SUM
SELECT TOP 10 SUM(LineTotal) AS SOMA_VENDAS FROM Sales.SalesOrderDetail;

--MIN
SELECT TOP 10  MIN(LineTotal) AS VAL_MIN_VENDAS FROM Sales.SalesOrderDetail;

--MAX
SELECT TOP 10 MAX(LineTotal) AS VAL_MAX_VENDAS FROM Sales.SalesOrderDetail;

--AVG
SELECT TOP 10 AVG(LineTotal) AS MEDIA_VENDAS FROM Sales.SalesOrderDetail;


--GROUP BY
SELECT SpecialOfferID, SUM(UnitPrice) FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;

SELECT ProductID, COUNT(ProductID) AS CONTAGEM FROM Sales.SalesOrderDetail GROUP BY ProductID;

SELECT FirstName, COUNT(FirstName) AS CONTAGEM FROM PERSON.PERSON GROUP BY FirstName ORDER BY FirstName;

--
SELECT COLOR, AVG(ListPrice) FROM Production.Product GROUP BY Color;

SELECT COLOR, AVG(ListPrice) FROM Production.Product WHERE Color='SILVER' GROUP BY Color;

--
SELECT MiddleName, COUNT(FirstName) FROM PERSON.PERSON GROUP BY MiddleName;

SELECT ProductID, AVG(OrderQty) FROM Sales.SalesOrderDetail GROUP BY ProductID;

--
SELECT TOP 10 ProductID, SUM(LineTotal) AS TOTAL FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY TOTAL DESC;
SELECT TOP 10 ProductID, SUM(LineTotal) AS TOTAL FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY SUM(LineTotal) DESC;

--
SELECT ProductID AS PRODUTO, COUNT(ProductID) AS CONTAGEM, AVG(OrderQty) AS MEDIA FROM Production.WorkOrder GROUP BY ProductID;


--HAVING
SELECT FirstName, COUNT(FirstName) AS QTD FROM PERSON.PERSON GROUP BY FirstName HAVING COUNT(FirstName) > 10;

SELECT ProductID, SUM(LineTotal) AS TOTAL 
FROM Sales.SalesOrderDetail 
GROUP BY ProductID 
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

--
SELECT StateProvinceID, COUNT(StateProvinceID) AS CONTAGEM 
FROM Person.Address 
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

--
SELECT ProductID, AVG(LineTotal) AS MEDIA 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000; 


-- INNER JOIN
SELECT P.BusinessEntityID, P.FirstName, P.LastName, E.EmailAddress
FROM Person.Person P
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID;

SELECT PR.ListPrice, PR.Name, PSC.Name
FROM Production.Product PR
INNER JOIN Production.ProductSubcategory PSC
ON PR.ProductSubcategoryID = PSC.ProductSubcategoryID;


SELECT PP.BusinessEntityID, PT.Name, PT.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PhoneNumberType PT
INNER JOIN Person.PersonPhone PP
ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID;

SELECT PA.AddressID, PA.City, PS.StateProvinceID, PS.Name
FROM Person.StateProvince PS
INNER JOIN Person.Address PA
ON PS.StateProvinceID = PA.StateProvinceID;