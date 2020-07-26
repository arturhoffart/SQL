-- Desafio 15
-- Trabalhando com datas

SELECT AVG(TotalDue) AS 'Media', DATEPART(month, OrderDate) as 'Mes'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY DATEPART(MONTH, OrderDate);

SELECT count(DATEPART(Year, BirthDate)) as 'Funcionarios', DATEPART(Year, BirthDate) as 'Ano Nascimento'
FROM HumanResources.Employee
GROUP BY DATEPART(YEAR, BIRTHDATE)
ORDER BY count(DATEPART(Year, BirthDate)) DESC;

SELECT COUNT(DATEPART(DAY, DUEDATE)) AS 'CONTAGEM', DATEPART(DAY, DUEDATE) AS 'DIA'
FROM Production.WorkOrder
GROUP BY DATEPART(DAY, DUEDATE)
ORDER BY DATEPART(DAY, DUEDATE);
