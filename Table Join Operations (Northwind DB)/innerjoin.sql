--INNER JOIN
--FARKLI TABLOLARDAN �L��K�L� OLAN  , �STED���M�Z ALANLARI GET�R�YOR

--13 ARALIK 2017

SELECT�Products.ProductName, Categories.CategoryName�FROM Categories -- iki tablodan getirmek istediklerimiz
INNER JOIN Products --categories ve products tablolar�
ON Products.CategoryID = Categories.CategoryID -- primary veya foreign key olmas� gerekmez
/* iki tabloda da ortak olan  k�s�m ON 'dan sonra yaz�l�r. */


INSERT into�Categories(CategoryName,Description)
values�('Tatl�lar', 'S�tl� Tatl�lar')
SELECT�*�FROM�Categories


SELECT�Suppliers.CompanyName, Products.ProductName�FROM Suppliers
INNER JOIN Products
ON Suppliers.SupplierID = Products.SupplierID


SELECT Orders.OrderID,Shippers.CompanyName,Orders.OrderDate�FROM�Shippers
INNER JOIN Orders
ON Shippers.ShipperID = Orders.ShipVia


SELECT Orders.OrderID,Customers.CompanyName,Orders.OrderDate�FROM�Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID -- hangi sipari�i hangi m��teri vermi�


select FirstName,LastName,count(OrderID) as [�r�n Say�s�]  from Orders
INNER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY FirstName,LastName
ORDER BY [�r�n Say�s�] DESC 


-- 20 ARALIK 2017
-- B�RDEN FAZLA TABLO �L��K�LER�

SELECT Orders.OrderID,Employees.FirstName,Employees.LastName,Customers.CompanyName FROM Employees
INNER JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN Customers
ON Customers.CustomerID = Orders.CustomerID


SELECT Suppliers.CompanyName, Products.ProductName,Categories.CategoryName  FROM Products
INNER JOIN Suppliers
ON Products.SupplierID=Suppliers.SupplierID
INNER JOIN Categories
ON Products.CategoryID=Categories.CategoryID


SELECT Orders.OrderID,Customers.CompanyName,Employees.FirstName+ ' ' + Employees.LastName ���i,Orders.OrderDate,Shippers.CompanyName as Kargo,
Products.ProductName,[Order Details].Quantity,Categories.CategoryName,Suppliers.CompanyName as Tedarik�i  FROM Employees
INNER JOIN Orders
ON Orders.EmployeeID = Employees.EmployeeID
INNER JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Shippers
ON Shippers.ShipperID = Orders.ShipVia
INNER JOIN [Order Details]
ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products
ON Products.ProductID = [Order Details].ProductID
INNER JOIN Categories
ON Categories.CategoryID = Products.CategoryID
INNER JOIN Suppliers
ON Suppliers.SupplierID = Products.SupplierID









