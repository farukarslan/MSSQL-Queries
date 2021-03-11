--hangi �r�n hangi kategoride
select Products.ProductName, Categories.CategoryName from Products
inner join Categories on Products.CategoryID = Categories.CategoryID

--hangi tedarik�i(Suppliers.companyname) hangi �r�n�(products.prouductname) sa�l�yor
select sp.CompanyName, p.ProductName from Suppliers as sp
inner join Products as p on sp.SupplierID = p.SupplierID
/*supliers as sp ile k�saltt�p o �ekilde tan�mlad�k 
products as p ile k�saltt�p o �ekilde tan�mlad�k*/  


--hangi kargo �ireketi ile ne zaman g�nderilmi�
select o.OrderID, s.CompanyName, o.OrderDate from  Orders as o
inner join Shippers as s on o.ShipVia = s.ShipperID

--hangi sipari�i hangi m�steri verimi�tir
select o.OrderID, c.ContactName from Orders as o 
inner join Customers as c on o.CustomerID = c.CustomerID

--hangi �al��an toplam ka� sipari� alm�s
select e.FirstName,e.LastName,count(o.OrderID)as toplamsiparis from Employees as e
inner join Orders as o on o.EmployeeID = e.EmployeeID group by FirstName,LastName
/*count oldugu i�in group by gerekli*/

--�sttekinin s�ralanm�� hali
select e.FirstName,e.LastName,count(o.OrderID) as ToplamSiparisSayisi from Employees as e
inner join Orders as o on o.EmployeeID = e.EmployeeID group by FirstName,LastName
order by ToplamSiparisSayisi desc

--hangi sipari�i , hangi �al��an , hangi m��teri vermi�tir
select Orders.OrderID, Employees.FirstName, Customers.ContactName,Orders.OrderDate from Orders
inner join Employees on Orders.EmployeeID = Employees.EmployeeID
inner join Customers on orders.CustomerID = Customers.CustomerID

--hangi �r�n, hangi kategoride bulunmakta, bu �r�n� kim tedarik etmektedir?
select Products.ProductName,Categories.CategoryName,Suppliers.CompanyName from Products
inner join Categories on Products.CategoryID = Categories.CategoryID
inner join Suppliers on Suppliers.SupplierID = Suppliers.SupplierID

/*hangi sipari�i,
hangi m��teri vermi�,
hangi �al��an alm��,
hangi tarihte,
hangi kargo �irketi taraf�ndan g�nderilmi�(shippers)
hangi �r�nden ka� adet alm��,
�r�n hangi kategorideymi�,
bu �r�n� hangi tedarik�i sa�lam��*/

SELECT Orders.OrderID,Customers.companyName,Employees.FirstName+ ' ' + Employees.LastName as Calisan,
Orders.OrderDate,Shippers.CompanyName as Kargo,Products.ProductName,
[Order Details].Quantity,
[Order Details].UnitPrice * (1-[Order Details].Discount) as indirimliFiyat,
Categories.CategoryName,
Suppliers.CompanyName as Tedarikci
FROM Employees
INNER JOIN Orders
ON Orders.EmployeeID = Employees.EmployeeID
INNER JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Shippers
ON Shippers.ShipperID = Orders.ShipVia
INNER JOIN[Order Details]
ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products
ON Products.ProductID = [Order Details].ProductID
INNER JOIN Categories
ON Categories.CategoryID = Products.CategoryID
INNER JOIN Suppliers
ON Suppliers.SupplierID = Products.SupplierID

--�r�n bulunmayan kategori ekledik
select * from Categories insert into  Categories(CategoryName,Description) values('Tatl�lar','Hede H�d�')
--alt�nda �r�n bulunmayan kategoriler
select Categories.CategoryName,Products.ProductName from Products 
right join Categories on Products.CategoryID = Categories.CategoryID where ProductName is null

--91 m��terim var.sadece 89 u sipari� vermi�.sipari� vermeyen 2 ki�iyi bulun
select Customers.CompanyName,Customers.Address,Orders.OrderID from Customers
left join Orders on Customers.CustomerID = orders.CustomerID where OrderID is null