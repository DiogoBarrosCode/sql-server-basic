--DISTINCT

SELECT DISTINCT FirstName FROM PERSON.Person

SELECT DISTINCT LastName FROM PERSON.Person


--COUNT

SELECT * FROM PERSON.Person

SELECT COUNT(*) FROM PERSON.Person

SELECT COUNT(DISTINCT Title) FROM PERSON.Person

--
SELECT * FROM Production.Product

SELECT count(*) FROM Production.Product

SELECT count(size) FROM Production.Product

SELECT count(distinct size) FROM Production.Product



--MIN - MAX - SUM - AVG

SELECT TOP 10 * FROM Sales.SalesOrderDetail

SELECT TOP 10 SUM(LineTotal)AS TOTAL FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(LineTotal) FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(LineTotal) FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LineTotal) FROM Sales.SalesOrderDetail



--GROUP BY

SELECT * FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice)AS SOMA FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID


SELECT ProductID, COUNT(ProductID)AS CONTAGEM FROM Sales.SalesOrderDetail
GROUP BY ProductID

-----------------------------------
SELECT * FROM PERSON.Person

SELECT FirstName, COUNT(FirstName)AS CONTAGEM FROM PERSON.Person
GROUP BY FirstName

------------------------------------

SELECT COLOR, AVG(ListPrice) FROM Production.Product
WHERE Color='SILVER'
GROUP BY Color


--HAVING

SELECT FirstName, COUNT(FirstName) AS QUANTIDADE
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-------------------------------------

SELECT TOP 10 * FROM SALES.SalesOrderDetail

SELECT ProductID, SUM(LineTotal) AS TOTAL
FROM SALES.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

---------------------------------------

SELECT * FROM PERSON.Person

SELECT FirstName, COUNT(FirstName) AS QUANTIDADE
FROM PERSON.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10



--INNER JOIN

SELECT TOP 10 * FROM Person.Person

SELECT TOP 10 * FROM Person.EmailAddress

SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress AS PE
ON P.BusinessEntityID = PE.BusinessEntityID

---------------------------------------------

SELECT TOP 10 * FROM Production.Product

SELECT TOP 10 * FROM Production.ProductSubcategory

SELECT P.ListPrice, P.Name, PS.Name
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID

------------------------------------------------

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA 
ON PA.AddressID = BA.AddressID

--------------------------------------------------

SELECT PP.BusinessEntityID, PT.Name, PT.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PhoneNumberType PT
INNER JOIN Person.PersonPhone PP
ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID

---------------------------------------------------

SELECT TOP 10 * FROM Person.StateProvince

SELECT TOP 10 * FROM Person.Address

SELECT AD.AddressID, AD.City, ST.StateProvinceID, ST.Name
FROM Person.StateProvince ST
INNER JOIN Person.Address AD
ON ST.StateProvinceID = AD.StateProvinceID