use AdventureWorks2017

SELECT * 
FROM Person.Person


SELECT *
FROM HumanResources.Employee

SELECT FIRSTNAME 
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer');