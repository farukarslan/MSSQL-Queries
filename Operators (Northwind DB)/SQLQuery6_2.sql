SELECT AVG (UnitPrice) FROM Products


select [ProductName],[UnitPrice] from Products
where UnitPrice<(select avg (UnitPrice) from Products)


SELECT CompanyName,Address,City,Country FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders)--distinct tekrarlarý tek sayar 


select UnitPrice  from Products
where UnitPrice>10.000


SELECT FirstName,LastName, EmployeeID FROM Employees
WHERE EmployeeID <5





