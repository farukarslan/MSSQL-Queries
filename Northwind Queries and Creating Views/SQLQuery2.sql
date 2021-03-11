/*Product tablosunda ProductName s ile baslayan t�m �r�nleri g�steren sorguyu yaz�n�z*/
select * from [dbo].[Products] where [ProductName] like 's%'

/*Product tablosunda Discontinued alan� false olmayanlar� g�steren kodu ya�n�z*/
select * from [dbo].[Products] where [Discontinued] not like 0

--Productname c veya t harfi ile baslayanlar� listele
select * from [dbo].[Products] where [ProductName]  like '[ct]%'

--ProductName c veya t harfi ile baslayanlar� g�sterme
select * from [dbo].[Products] where [ProductName] not like '[ct]%'

--SuppliersID si 1,2,3,4 olanar� g�sterecek sorguyu yaz�n�z --asc d�z desc tersten listeliyo
select * from [dbo].[Products] where [SupplierID] in (1,2,3,4) order by [SupplierID] asc

--CategoryID si 2 - 8 aras�nda olnalar� listele
select * from [dbo].[Products] where [CategoryID] between 2 and 8

 
--Rapor Olu�turma--
 Create view rapor1 as
 Select [ProductID],[UnitPrice],[ProductName],'durum raporu'=
 Case
 When [UnitPrice]<10 then 'ucuz'
 When [UnitPrice]>10 and [UnitPrice]<30 then 'idare eder'
 when [UnitPrice]>30 then 'pahal�'
 else 'yorum yok'
 end 
 from [dbo].[Products]
 -----------------------------------------

 --�stteki i�lemin ayn�s�n� yap categorty�d si 2 - 5 aras�nda olanlar� g�ster
 Create view rapor2 as
 Select [ProductID],[UnitPrice],[ProductName],[CategoryID],'durum raporu'= 
 Case
 When [UnitPrice]<10 then 'ucuz'
 When [UnitPrice]>10 and [UnitPrice]<30 then 'idare eder'
 when [UnitPrice]>30 then 'pahal�'
 else 'yorum yok'
 end 
 from [dbo].[Products] where [CategoryID] between 1 and 5 
 -----------------------------------------

 /*northwind tablosundaki customers tablosunda countryname g ve m harfi ile ba�layan �lkelerdeki kay�tlara mesafe isminde bir alan ekleyerek
 country bilgisi Germany olanlara mesafe bilgisi i�in yak�n meksika olanlar i�in uzak di�erleri i�in hi�birfikrimyok yazacak raporu olu�turunuz.*/

 Create view omer as
 Select [CustomerID],[CompanyName],[ContactName],[Country],'mesafe'=
 Case
 When [Country]='Germany' then 'yak�n'
 When [Country]='Mexico' then 'uzak'
 else 'hi�bi fikrim yok'
 end 
 from [dbo].[Customers] where [Country] like '[gm]%'

 --product tablosundaki unitprice alanlar�n�n toplam de�erini bulan sorguyu yaz�n�z
 select sum ([UnitPrice]) from [dbo].[Products]
 --product tablosundaki unitprice alanlar�n�n en k���k de�erini bulan sorguyu yaz�n�z
  select min ([UnitPrice]) from [dbo].[Products]
 --product tablosundaki unitprice alanlar�n�n en b�y�k de�erini bulan sorguyu yaz�n�z
  select max ([UnitPrice]) from [dbo].[Products]
 --product tablosundaki unitprice alanlar�n�n ortalamas�n� bulan sorguyu yaz�n�z
   select avg ([UnitPrice]) from [dbo].[Products]
  
 --say� isimi bir de�i�ken tan�mlayarak say�ya 20 atay�n�z 3 ile �arparak sonucu g�r�nt�leyiniz
 Declare @sayi int --declare tan�mla
 Select @sayi = 20 
 Select @sayi=@sayi*3 
 Print @sayi --yazd�r

 --maliye fiyat� 250 lira olan bir �r�n vard�r sat�c� firma sat�� fiyat� olarak �r�n maliyetinin 3 kat� + %18 kdv ile sat��yapmaktad�r.
 --s�ras�yla �r�n sat�� fiyat�,kdv si ve toplam kdvyi ,fiyat� g�steren soruguy yaz�n�z
 Declare @fiyat int
 Declare @satisfiyati int 
 Declare @kdv int
 Declare @toplamkdv int
 Select @kdv = 250*18/100
 Select @fiyat = 250
 Select @satisfiyati = @fiyat*3
 Select @toplamkdv = @satisfiyati +@kdv
 Print 'Fiyat�:'
 Print @fiyat
 Print 'Sat�� Fiyat�:'
 Print @satisfiyati
 Print 'Kdv:'
 Print @kdv
 Print 'Toplam KDV:'
 Print @toplamkdv

