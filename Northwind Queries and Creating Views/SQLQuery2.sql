/*Product tablosunda ProductName s ile baslayan tüm ürünleri gösteren sorguyu yazýnýz*/
select * from [dbo].[Products] where [ProductName] like 's%'

/*Product tablosunda Discontinued alaný false olmayanlarý gösteren kodu yaýnýz*/
select * from [dbo].[Products] where [Discontinued] not like 0

--Productname c veya t harfi ile baslayanlarý listele
select * from [dbo].[Products] where [ProductName]  like '[ct]%'

--ProductName c veya t harfi ile baslayanlarý gösterme
select * from [dbo].[Products] where [ProductName] not like '[ct]%'

--SuppliersID si 1,2,3,4 olanarý gösterecek sorguyu yazýnýz --asc düz desc tersten listeliyo
select * from [dbo].[Products] where [SupplierID] in (1,2,3,4) order by [SupplierID] asc

--CategoryID si 2 - 8 arasýnda olnalarý listele
select * from [dbo].[Products] where [CategoryID] between 2 and 8

 
--Rapor Oluþturma--
 Create view rapor1 as
 Select [ProductID],[UnitPrice],[ProductName],'durum raporu'=
 Case
 When [UnitPrice]<10 then 'ucuz'
 When [UnitPrice]>10 and [UnitPrice]<30 then 'idare eder'
 when [UnitPrice]>30 then 'pahalý'
 else 'yorum yok'
 end 
 from [dbo].[Products]
 -----------------------------------------

 --Üstteki iþlemin aynýsýný yap categortyýd si 2 - 5 arasýnda olanlarý göster
 Create view rapor2 as
 Select [ProductID],[UnitPrice],[ProductName],[CategoryID],'durum raporu'= 
 Case
 When [UnitPrice]<10 then 'ucuz'
 When [UnitPrice]>10 and [UnitPrice]<30 then 'idare eder'
 when [UnitPrice]>30 then 'pahalý'
 else 'yorum yok'
 end 
 from [dbo].[Products] where [CategoryID] between 1 and 5 
 -----------------------------------------

 /*northwind tablosundaki customers tablosunda countryname g ve m harfi ile baþlayan ülkelerdeki kayýtlara mesafe isminde bir alan ekleyerek
 country bilgisi Germany olanlara mesafe bilgisi için yakýn meksika olanlar için uzak diðerleri için hiçbirfikrimyok yazacak raporu oluþturunuz.*/

 Create view omer as
 Select [CustomerID],[CompanyName],[ContactName],[Country],'mesafe'=
 Case
 When [Country]='Germany' then 'yakýn'
 When [Country]='Mexico' then 'uzak'
 else 'hiçbi fikrim yok'
 end 
 from [dbo].[Customers] where [Country] like '[gm]%'

 --product tablosundaki unitprice alanlarýnýn toplam deðerini bulan sorguyu yazýnýz
 select sum ([UnitPrice]) from [dbo].[Products]
 --product tablosundaki unitprice alanlarýnýn en küçük deðerini bulan sorguyu yazýnýz
  select min ([UnitPrice]) from [dbo].[Products]
 --product tablosundaki unitprice alanlarýnýn en büyük deðerini bulan sorguyu yazýnýz
  select max ([UnitPrice]) from [dbo].[Products]
 --product tablosundaki unitprice alanlarýnýn ortalamasýný bulan sorguyu yazýnýz
   select avg ([UnitPrice]) from [dbo].[Products]
  
 --sayý isimi bir deðiþken tanýmlayarak sayýya 20 atayýnýz 3 ile çarparak sonucu görüntüleyiniz
 Declare @sayi int --declare tanýmla
 Select @sayi = 20 
 Select @sayi=@sayi*3 
 Print @sayi --yazdýr

 --maliye fiyatý 250 lira olan bir ürün vardýr satýcý firma satýþ fiyatý olarak ürün maliyetinin 3 katý + %18 kdv ile satýþyapmaktadýr.
 --sýrasýyla ürün satýþ fiyatý,kdv si ve toplam kdvyi ,fiyatý gösteren soruguy yazýnýz
 Declare @fiyat int
 Declare @satisfiyati int 
 Declare @kdv int
 Declare @toplamkdv int
 Select @kdv = 250*18/100
 Select @fiyat = 250
 Select @satisfiyati = @fiyat*3
 Select @toplamkdv = @satisfiyati +@kdv
 Print 'Fiyatý:'
 Print @fiyat
 Print 'Satýþ Fiyatý:'
 Print @satisfiyati
 Print 'Kdv:'
 Print @kdv
 Print 'Toplam KDV:'
 Print @toplamkdv

