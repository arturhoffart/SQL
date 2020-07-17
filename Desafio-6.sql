--Desafio 6 Between
select * from Production.Product
where ListPrice not Between 1000 and 1500
order by ListPrice asc;


SELECT * FROM HumanResources.Employee
where HireDate between '2009/01/01' and '2010/01/01'
order by HireDate asc;