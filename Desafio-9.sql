use AdventureWorks2017;

select top 10 sum (LineTotal) as 'soma'
from Sales.SalesOrderDetail;

SELECT TOP 10 MIN(LineTotal) AS 'Minimo'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MAX(LineTotal) AS 'Maximo'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(LineTotal) AS 'Media'
FROM Sales.SalesOrderDetail;
