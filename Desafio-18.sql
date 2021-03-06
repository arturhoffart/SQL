-- MANIPULADO STRINGS

USE AdventureWorks2017;
SELECT UPPER(CONCAT(FIRSTNAME,' ',LASTNAME)), SUBSTRING(LASTNAME,1 ,3)
FROM Person.Person
ORDER BY FirstName;

SELECT UPPER(FIRSTNAME)
FROM Person.Person;

SELECT LOWER(LASTNAME)
FROM Person.Person;

SELECT CONCAT(FIRSTNAME, MIDDLENAME, LastName)
FROM Person.Person;

SELECT LEN(CONCAT(FIRSTNAME, MIDDLENAME, LastName))
FROM Person.Person;

SELECT SUBSTRING(FIRSTNAME, 1, 2)
FROM Person.Person;

SELECT REPLACE(FIRSTNAME, 'A', 'ZARATUSTRA')
FROM PERSON.Person;