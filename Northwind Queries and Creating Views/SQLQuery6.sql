
--Tablo üzerinden iþlemler

INSERT into Products (ProductName,UnitPrice,UnitsInStock,Discontinued)
values ('Kuru Fasülye',5,1000,0)  -- Products klasörüne verilen deðerleri ekler


UPDATE Products SET ProductName = 'Taze Fasülye'
WHERE ProductID = 78    --   Products klasöründeki productname kolonundakini güncelle --> taze fasülye   ,  productid 78 olan


DELETE FROM Products WHERE ProductID = 78    --Products tablosundan productid si 78 olaný sil


SELECT * FROM Employees  --  Employees tablosundan herþeyi getir


SELECT ProductName,UnitPrice FROM Products
WHERE UnitPrice > 100  --  products tablosundan product ve unitprice kolonlarýný getir , unitprice si 100 den büyük olanlar


SELECT ProductName,UnitPrice, UnitsInStock FROM Products 
WHERE UnitsInStock < 10  -- products tablosundan istenilenleri getir stoðu 10 dan az olanlarý


SELECT CompanyName, ContactName, Address, City, Country FROM Customers 
WHERE Country = 'Brazil'  --  Customers tablosundan istenilenleri getir , country si brazil e eþit olaný


SELECT CompanyName,ContactName,Address,City,Country FROM Customers 
WHERE Country != 'Brazil'  -- Customers tablosundan istenilenleri getir , country si brazil e eþit olmayaný


SELECT CustomerID,CompanyName,Address, City FROM Customers
WHERE City =  'London' OR City =  'Paris' --  customers tablosundan istenilenleri getir , city london veya paris olanlarý 


SELECT CustomerID,ContactTitle,City,CompanyName FROM Customers
WHERE City = 'México D.F.' AND ContactTitle = 'owner'


SELECT ProductName,UnitPrice FROM Products
WHERE ProductName LIKE 'C%'


SELECT ProductName,Discontinued FROM Products
WHERE Discontinued = 1


SELECT FirstName,LastName FROM Employees
WHERE FirstName LIKE 'A%'


SELECT CompanyName FROM Customers
WHERE CompanyName like '%RESTAURANT%'


SELECT ProductName,UnitPrice FROM Products
WHERE UnitPrice >= 50 AND UnitPrice <= 100


SELECT ProductName,UnitPrice FROM Products
WHERE UnitPrice BETWEEN 50 AND 100


SELECT OrderID , OrderDate FROM Orders
WHERE OrderDate BETWEEN '1996/07/01' AND '1996/12/31'


SELECT CompanyName,Country FROM Customers
WHERE Country = 'Spain' OR Country = 'France' OR Country = 'Germany'


SELECT CompanyName,Country FROM Customers
WHERE Country IN ('Spain','France','Germany')


SELECT CompanyName,Country FROM Customers
WHERE Country NOT IN ('Spain','France','Germany')


SELECT CustomerID, CompanyName, Fax FROM Customers
WHERE Fax is null


SELECT CompanyName,Country FROM Customers
ORDER BY Country ASC


SELECT CompanyName,Country FROM Customers
ORDER BY Country --ASC YAZMADAN DA VARSAYILAN OLARAK KÜÇÜKTEN BÜYÜÐE VEYA A DAN Z YE SIRALIYOR


SELECT CompanyName,Country FROM Customers
ORDER BY Country DESC


SELECT ProductName,UnitPrice,UnitsInStock FROM Products
ORDER BY UnitPrice DESC, UnitsInStock ASC


SELECT COUNT(*) FROM Customers


SELECT COUNT(*) FROM Products
WHERE CategoryID = 1


SELECT COUNT (DISTINCT Country) FROM Customers--DÝSTÝNCT TEKRARLAYAN VERÝLERÝ TEK GÖSTERÝYOR


SELECT DISTINCT Country FROM Customers
ORDER BY Country ASC


SELECT TOP 5 ProductName, UnitPrice FROM Products--EN PAHALI 5 ÜRÜNÜ LÝSTELÝYOR
ORDER BY UnitPrice DESC


SELECT COUNT(*) FROM Orders
WHERE CustomerID like '%ALFKI%'
--ÝKÝSÝ DE AYNI ÝÞÝ YAPIYOR.ÝKÝNCÝSÝ DAHA MANTIKLI
SELECT COUNT(*) FROM Orders
WHERE CustomerID = 'ALFKI'
 

SELECT COUNT(*) AS ToplamSipariþ FROM Orders--BAÞLIK BELÝRTTÝK . AS KULLANMASAYDIK DA ÇALIÞTI
WHERE CustomerID = 'ALFKI'--DÝÐER ÖRNEKTE AS KULLANMADAN KOLON ÝSMÝ VERDÝK


SELECT SUM(UnitPrice) ToplamSipariþ FROM Products


SELECT SUM (UnitPrice*Quantity*(1-Discount)) ToplamCiro FROM [Order Details] --TOPLAM CÝRO YU VERÝYOR


SELECT AVG (UnitPrice) Ortalama FROM Products


SELECT FirstName +'  '+ LastName AS AdSoyad FROM Employees --AYRI SÜTUNLARDAKÝ AD SOYADI YAN YANA YAZDIRMIÞ 
--TIRNAK ARASINA ÝSTEDÝÐÝN KADAR BOÞLUK BIRAK


SELECT MAX (UnitPrice) FROM Products
--MAX VE MÝN DEÐERLERÝ VERDÝK
SELECT MIN (UnitPrice) FROM Products


SELECT ProductName FROM Products
WHERE UnitPrice = (SELECT MAX (UnitPrice) FROM Products)--EN PAHALI ÜRÜN ADI


SELECT MIN (UnitPrice * Quantity) FROM [Order Details]--EN AZ KAZANDIRAN SÝPARÝÞ


--ÜS ALMA
SELECT POWER(3,2)--3 ÜN KARESÝ
SELECT SQRT(81)--81 ÝN KAREKÖKÜ


SELECT LEN ('DENEME')--KARAKTER SAYISINI VERÝYOR


SELECT FirstName,LastName, YEAR(GETDATE()) - YEAR(BirthDate) FROM Employees


SELECT ProductID, SUM (Quantity) KAÇ_TANE FROM [Order Details]
GROUP BY ProductID --HANGÝ ÜRÜNDEN KAÇAR ADET ALINDIÐI BÝLGÝSÝNÝ VERÝYOR
ORDER BY KAÇ_TANE DESC


SELECT OrderID, SUM (Quantity * UnitPrice) FROM [Order Details]
GROUP BY OrderID


SELECT CategoryID, COUNT(ProductID) FROM Products
GROUP BY CategoryID

 

