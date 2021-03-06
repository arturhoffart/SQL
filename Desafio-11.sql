use AdventureWorks2017;

SELECT FIRSTNAME, COUNT(FIRSTNAME) AS 'QTY'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FIRSTNAME) >10
ORDER BY COUNT(FIRSTNAME) DESC;


SELECT PRODUCTID, SUM(LineTotal) AS 'TOTAL'
FROM SALES.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;


--USANDO WHERE E HAVINIG
SELECT FIRSTNAME, COUNT(FIRSTNAME) AS 'QTY'
FROM PERSON.Person
WHERE Title = 'MR.'
GROUP BY FirstName
HAVING COUNT(FIRSTNAME) > 10;

-- DESAFIO
--1 Identificar as provincias  com o maior numero  de cadastros no sistema com mais de 1000 ocorrencias 
SELECT STATEPROVINCEID, COUNT(STATEPROVINCEID) AS 'PROVINCE'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(STATEPROVINCEId) > 1000;

--2 Os gerentes querem saber quais produtos n�o est�o trazendo no minimo 1 milh�o de vendas em m�dia
SELECT PRODUCTID, AVG(LINETOTAL) AS 'TOTAL'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LINETOTAL) < 1000000
ORDER BY AVG(LINETOTAL) ASC;

