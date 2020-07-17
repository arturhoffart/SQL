-- Quantos produtos cadastrados que custam mais do que $1500
select count (listprice)
from Production.Product
where ListPrice >= 1500;

-- quantas pessoas temos com o sobrenome que começa com a letra P
select count(lastname)
from person.Person
where LastName like 'P%';

-- em quantas cidades unicas estão cadastrados nossos clientes?
select count(distinct(City))
from Person.Address;

-- quais as cidades unicas cadastradas no sistema
select distinct (city)
from Person.Address


-- quantos produtos vermelhos tem o preço entre $500 a $1000
select count(name)
from Production.Product
where Color = 'red' and ListPrice between 500 and 1000;


-- quantos produtos cadastrados tem a palavra road no nome
select count(name)
from Production.Product
where name like '%road%';