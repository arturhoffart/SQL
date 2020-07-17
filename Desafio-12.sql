use AdventureWorks2017;
--1
select firstname as 'Nome', lastname as 'Sobrenome'
from Person.Person;
--2
select ProductNumber as 'Numero do Produto'
from Production.Product;
--3
select UnitPrice as 'preço unitario'
from Sales.SalesOrderDetail;