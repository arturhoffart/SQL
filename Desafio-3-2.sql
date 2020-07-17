select * from HumanResources.Employee
where maritalStatus = 'm' and
SalariedFlag = '1';


select * 
from person.EmailAddress, Person.Person
where EmailAddress.BusinessEntityID = Person.BusinessEntityID and FirstName = 'Peter' and LastName = 'Krebs';
	