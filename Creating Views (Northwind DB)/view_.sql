
-- V�EW 

------------------------------------------------------
CREATE VIEW  vwComp as -- view olu�turma
SELECT CompanyName,OrderDate FROM Customers as c
INNER JOIN Orders as o
ON c.CustomerID=o.CustomerID

SELECT * FROM vwComp -- view i �al��t�rma
------------------------------------------------------
CREATE VIEW UrunlereGoreTedarikciler AS
SELECT ProductName,CompanyName,Address,City,Country FROM Products
INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID

SELECT * FROM UrunlereGoreTedarikciler
------------------------------------------------------
CREATE VIEW AlmanMusteriler AS
SELECT CustomerID,CompanyName,Address,City,Country FROM Customers
WHERE Country = 'Germany'
--INNER JOIN i�ermiyor, bo� ge�ilemez (not null) alan da var o zaman view a uyuyor. (ilk iki ko�ulu sa�lad�)
WITH CHECK OPTION

SELECT * FROM AlmanMusteriler

INSERT INTO AlmanMusteriler(CustomerID,CompanyName,Address, City,Country)
values
('ACTHU','ACHTUNG Co.','Hede','Berlin','Germany')
------------------------------------------------------
