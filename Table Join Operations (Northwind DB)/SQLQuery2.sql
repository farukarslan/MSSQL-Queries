--hangi ürün hangi kategoride
select Products.ProductName, Categories.CategoryName from Products
inner join Categories on Products.CategoryID = Categories.CategoryID

--hangi tedarikçi(Suppliers.companyname) hangi ürünü(products.prouductname) saðlýyor
select sp.CompanyName, p.ProductName from Suppliers as sp
inner join Products as p on sp.SupplierID = p.SupplierID
/*supliers as sp ile kýsalttýp o þekilde tanýmladýk 
products as p ile kýsalttýp o þekilde tanýmladýk*/  


--hangi kargo þireketi ile ne zaman gönderilmiþ
select o.OrderID, s.CompanyName, o.OrderDate from  Orders as o
inner join Shippers as s on o.ShipVia = s.ShipperID

--hangi sipariþi hangi müsteri verimiþtir
select o.OrderID, c.ContactName from Orders as o 
inner join Customers as c on o.CustomerID = c.CustomerID

--hangi çalýþan toplam kaç sipariþ almýs
select e.FirstName,e.LastName,count(o.OrderID)as toplamsiparis from Employees as e
inner join Orders as o on o.EmployeeID = e.EmployeeID group by FirstName,LastName
/*count oldugu için group by gerekli*/

--üsttekinin sýralanmýþ hali
select e.FirstName,e.LastName,count(o.OrderID) as ToplamSiparisSayisi from Employees as e
inner join Orders as o on o.EmployeeID = e.EmployeeID group by FirstName,LastName
order by ToplamSiparisSayisi desc

--hangi sipariþi , hangi çalýþan , hangi müþteri vermiþtir
select Orders.OrderID, Employees.FirstName, Customers.ContactName,Orders.OrderDate from Orders
inner join Employees on Orders.EmployeeID = Employees.EmployeeID
inner join Customers on orders.CustomerID = Customers.CustomerID

--hangi ürün, hangi kategoride bulunmakta, bu ürünü kim tedarik etmektedir?
select Products.ProductName,Categories.CategoryName,Suppliers.CompanyName from Products
inner join Categories on Products.CategoryID = Categories.CategoryID
inner join Suppliers on Suppliers.SupplierID = Suppliers.SupplierID

/*hangi sipariþi,
hangi müþteri vermiþ,
hangi çalýþan almýþ,
hangi tarihte,
hangi kargo þirketi tarafýndan gönderilmiþ(shippers)
hangi üründen kaç adet almýþ,
ürün hangi kategorideymiþ,
bu ürünü hangi tedarikçi saðlamýþ*/

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

--ürün bulunmayan kategori ekledik
select * from Categories insert into  Categories(CategoryName,Description) values('Tatlýlar','Hede Hödö')
--altýnda ürün bulunmayan kategoriler
select Categories.CategoryName,Products.ProductName from Products 
right join Categories on Products.CategoryID = Categories.CategoryID where ProductName is null

--91 müþterim var.sadece 89 u sipariþ vermiþ.sipariþ vermeyen 2 kiþiyi bulun
select Customers.CompanyName,Customers.Address,Orders.OrderID from Customers
left join Orders on Customers.CustomerID = orders.CustomerID where OrderID is null