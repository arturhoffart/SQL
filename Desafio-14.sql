use Northwind;

SELECT A.ProductID,A.Discount, B.ProductID, B.Discount
from [Order Details] A, [Order Details] B
Where A.Discount = B.Discount;