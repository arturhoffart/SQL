select top 10 * from Person.Person;

select * from Person.Person
order by FirstName asc, LastName desc;

select top 10 ProductID
from Production.Product
order by ListPrice desc;

select top 4 name, productId
from Production.Product
order by ProductID asc;