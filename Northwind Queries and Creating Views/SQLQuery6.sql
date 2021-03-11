
--Tablo �zerinden i�lemler

INSERT into�Products (ProductName,UnitPrice,UnitsInStock,Discontinued)
values�('Kuru Fas�lye',5,1000,0)  -- Products klas�r�ne verilen de�erleri ekler


UPDATE�Products�SET�ProductName = 'Taze Fas�lye'
WHERE�ProductID = 78    --   Products klas�r�ndeki productname kolonundakini g�ncelle --> taze fas�lye   ,  productid 78 olan


DELETE�FROM�Products�WHERE�ProductID = 78    --Products tablosundan productid si 78 olan� sil


SELECT�*�FROM�Employees  --  Employees tablosundan her�eyi getir


SELECT�ProductName,UnitPrice�FROM�Products
WHERE�UnitPrice > 100  --  products tablosundan product ve unitprice kolonlar�n� getir , unitprice si 100 den b�y�k olanlar


SELECT�ProductName,UnitPrice, UnitsInStock�FROM Products�
WHERE�UnitsInStock < 10  -- products tablosundan istenilenleri getir sto�u 10 dan az olanlar�


SELECT�CompanyName, ContactName, Address, City, Country�FROM Customers�
WHERE�Country = 'Brazil'  --  Customers tablosundan istenilenleri getir , country si brazil e e�it olan�


SELECT�CompanyName,ContactName,Address,City,Country�FROM Customers�
WHERE�Country�!=�'Brazil'  -- Customers tablosundan istenilenleri getir , country si brazil e e�it olmayan�


SELECT�CustomerID,CompanyName,Address, City�FROM�Customers
WHERE�City = �'London' OR City = �'Paris' --  customers tablosundan istenilenleri getir , city london veya paris olanlar� 


SELECT�CustomerID,ContactTitle,City,CompanyName�FROM�Customers
WHERE�City = 'M�xico D.F.' AND ContactTitle = 'owner'


SELECT�ProductName,UnitPrice�FROM�Products
WHERE�ProductName LIKE 'C%'


SELECT�ProductName,Discontinued�FROM�Products
WHERE�Discontinued = 1


SELECT�FirstName,LastName�FROM�Employees
WHERE�FirstName LIKE 'A%'


SELECT�CompanyName�FROM�Customers
WHERE�CompanyName like '%RESTAURANT%'


SELECT�ProductName,UnitPrice�FROM�Products
WHERE�UnitPrice�>=�50�AND UnitPrice <=�100


SELECT�ProductName,UnitPrice�FROM�Products
WHERE�UnitPrice�BETWEEN�50�AND�100


SELECT OrderID , OrderDate�FROM�Orders
WHERE�OrderDate BETWEEN�'1996/07/01'�AND�'1996/12/31'


SELECT�CompanyName,Country�FROM�Customers
WHERE�Country = 'Spain'�OR�Country = 'France'�OR�Country = 'Germany'


SELECT�CompanyName,Country�FROM�Customers
WHERE�Country IN ('Spain','France','Germany')


SELECT�CompanyName,Country�FROM�Customers
WHERE�Country�NOT IN�('Spain','France','Germany')


SELECT�CustomerID, CompanyName, Fax�FROM�Customers
WHERE�Fax is null


SELECT�CompanyName,Country�FROM�Customers
ORDER BY Country ASC


SELECT�CompanyName,Country�FROM�Customers
ORDER BY Country --ASC YAZMADAN DA VARSAYILAN OLARAK K���KTEN B�Y��E VEYA A DAN Z YE SIRALIYOR


SELECT�CompanyName,Country�FROM�Customers
ORDER BY Country DESC


SELECT�ProductName,UnitPrice,UnitsInStock�FROM�Products
ORDER BY UnitPrice�DESC, UnitsInStock�ASC


SELECT�COUNT(*)�FROM�Customers


SELECT�COUNT(*)�FROM�Products
WHERE�CategoryID = 1


SELECT�COUNT�(DISTINCT Country)�FROM�Customers--D�ST�NCT TEKRARLAYAN VER�LER� TEK G�STER�YOR


SELECT�DISTINCT�Country�FROM�Customers
ORDER BY Country�ASC


SELECT�TOP 5�ProductName, UnitPrice�FROM�Products--EN PAHALI 5 �R�N� L�STEL�YOR
ORDER BY UnitPrice�DESC


SELECT�COUNT(*)�FROM�Orders
WHERE�CustomerID like '%ALFKI%'
--�K�S� DE AYNI ��� YAPIYOR.�K�NC�S� DAHA MANTIKLI
SELECT�COUNT(*)�FROM�Orders
WHERE�CustomerID = 'ALFKI'
�

SELECT�COUNT(*) AS ToplamSipari��FROM�Orders--BA�LIK BEL�RTT�K . AS KULLANMASAYDIK DA �ALI�TI
WHERE�CustomerID = 'ALFKI'--D��ER �RNEKTE AS KULLANMADAN KOLON �SM� VERD�K


SELECT�SUM(UnitPrice) ToplamSipari��FROM�Products


SELECT�SUM�(UnitPrice*Quantity*(1-Discount)) ToplamCiro FROM�[Order Details] --TOPLAM C�RO YU VER�YOR


SELECT�AVG�(UnitPrice) Ortalama�FROM�Products


SELECT�FirstName +'  '+ LastName AS AdSoyad�FROM Employees --AYRI S�TUNLARDAK� AD SOYADI YAN YANA YAZDIRMI� 
--TIRNAK ARASINA �STED���N KADAR BO�LUK BIRAK


SELECT�MAX�(UnitPrice)�FROM�Products
--MAX VE M�N DE�ERLER� VERD�K
SELECT�MIN�(UnitPrice)�FROM�Products


SELECT�ProductName�FROM�Products
WHERE�UnitPrice = (SELECT�MAX�(UnitPrice)�FROM�Products)--EN PAHALI �R�N ADI


SELECT�MIN�(UnitPrice * Quantity)�FROM�[Order Details]--EN AZ KAZANDIRAN S�PAR��


--�S ALMA
SELECT POWER(3,2)--3 �N KARES�
SELECT SQRT(81)--81 �N KAREK�K�


SELECT�LEN�('DENEME')--KARAKTER SAYISINI VER�YOR


SELECT�FirstName,LastName, YEAR(GETDATE()) - YEAR(BirthDate)�FROM Employees


SELECT ProductID,�SUM�(Quantity) KA�_TANE�FROM�[Order Details]
GROUP BY ProductID --HANG� �R�NDEN KA�AR ADET ALINDI�I B�LG�S�N� VER�YOR
ORDER BY KA�_TANE DESC


SELECT�OrderID,�SUM�(Quantity * UnitPrice)�FROM�[Order Details]
GROUP BY OrderID


SELECT�CategoryID, COUNT(ProductID)�FROM�Products
GROUP BY CategoryID

 

