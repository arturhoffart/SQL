--trabalhando com joins
use adventureworks2017;


--Join de person.person e person.emailadress
SELECT TOP 10 P.BUSINESSENTITYID, P.FIRSTNAME, P.LASTNAME, A.EmailAddress
FROM PERSON.PERSON AS P
INNER JOIN PERSON.EmailAddress AS A ON P.BUSINESSENTITYID = A.BUSINESSENTITYID;

--Nomes dos produtos, informações de subcategoria, preço
SELECT TOP 10 PR.LISTPRICE, PR.NAME, PC.NAME
FROM Production.Product AS PR
INNER JOIN Production.ProductSubcategory PC 
ON PC.ProductSubcategoryID = PR.ProductSubcategoryID;

--DESAFIO 1
SELECT TOP 10 * FROM PERSON.PhoneNumberType;
SELECT TOP 10 * FROM PERSON.PersonPhone;

SELECT TOP 10  PE.BusinessEntityID, PH.Name, PH.PhoneNumberTypeID, PE.PhoneNumber
FROM
PERSON.PersonPhone AS PE
INNER JOIN 
PERSON.PhoneNumberType AS PH
ON
PE.PhoneNumberTypeID = PH.PhoneNumberTypeID
ORDER BY PH.Name;


--DESAFIO 2
--AdressID, City, StateProvinceID, State Name
SELECT TOP 10 * FROM Person.StateProvince;
SELECT TOP 10 * FROM Person.Address;
SELECT TOP 10 PS.STATEPROVINCEID, PA.AddressLine1, PA.CITY, PS.NAME
FROM Person.Address AS PA
INNER JOIN 
Person.StateProvince AS PS
ON
PS.StateProvinceID = PA.StateProvinceID; 