use AdventureWorks2017;

SELECT * 
FROM Sales.SalesOrderDetail;

SELECT SPECIALOFFERID, SUM(UNITPRICE) AS 'SUBTOTAL'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

SELECT ProductID, COUNT(ProductID) AS 'Quantity'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID;

SELECT FIRSTNAME, COUNT(FIRSTNAME) AS 'QUANTITY'
FROM Person.Person
GROUP BY FirstName
ORDER BY COUNT(FIRSTNAME) DESC;

SELECT COLOR, AVG(LISTPRICE) AS 'PRICE'
FROM Production.Product
GROUP BY COLOR;

--DESAFIO
--1 QUANTAS PESSOAS TEM O MESMO MIDDLE NAME AGRUPADAS POR MIDDLE NAME
SELECT MIDDLENAME, COUNT(MIDDLENAME) AS 'COUNT'
FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName;

--2 calcular a média que cada produto é vendido
SELECT PRODUCTID, AVG(ORDERQTY) AS 'AVG'
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

--3 10 VENDAS COM MAIOR VALOR
SELECT TOP 10 ProductID, SUM(LINETOTAL) as 'top 10'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LINEtOTAL) DESC;

--4 Eu preciso saber quantos produtos e qual quantidade média de produtos temos cadastrados 
-- nas nossas ordens de serviço agrupados por Pruduct ID
SELECT ProductID, COUNT(PRODUCTID) as 'contagem',
AVG (ORDERQTY) AS 'MEDIA'
FROM PRODUCTION.WorkOrder
Group By ProductID;