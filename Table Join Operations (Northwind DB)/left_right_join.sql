
-- LEFT - RIGHT JOIN 

SELECT * FROM Categories
INSERT into Categories(CategoryName,Description) values
('Tatlýlar', 'Hede Hödö')


SELECT Categories.CategoryName,Products.ProductName FROM Products --altýnda ürün bulunmayan kategoriler
RIGHT JOIN Categories												--RÝGHT JOIN
ON Products.CategoryID = Categories.CategoryID
WHERE ProductName is null


SELECT Categories.CategoryName,Products.ProductName FROM Categories --altýnda ürün bulunmayan kategoriler
LEFT JOIN Products														--LEFT JOIN
ON Products.CategoryID = Categories.CategoryID
WHERE ProductName is null


SELECT CompanyName,Address,OrderID FROM Orders
RIGHT JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID is null


