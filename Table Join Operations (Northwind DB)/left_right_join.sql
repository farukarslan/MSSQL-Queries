
-- LEFT - RIGHT JOIN 

SELECT * FROM Categories
INSERT into Categories(CategoryName,Description) values
('Tatl�lar', 'Hede H�d�')


SELECT Categories.CategoryName,Products.ProductName FROM Products --alt�nda �r�n bulunmayan kategoriler
RIGHT JOIN Categories												--R�GHT JOIN
ON Products.CategoryID = Categories.CategoryID
WHERE ProductName is null


SELECT Categories.CategoryName,Products.ProductName FROM Categories --alt�nda �r�n bulunmayan kategoriler
LEFT JOIN Products														--LEFT JOIN
ON Products.CategoryID = Categories.CategoryID
WHERE ProductName is null


SELECT CompanyName,Address,OrderID FROM Orders
RIGHT JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID is null


