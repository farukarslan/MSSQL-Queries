--product tablosundaki unitprice de�eri ortalamadan y�ksek olanlar� g�stersin sadece
select * from [dbo].[Products] where [UnitPrice] >= (select avg([UnitPrice]) from [dbo].[Products] ) 
--kategori �d si en y�ksek deger olan prduct tablosunu listele
select * from [dbo].[Products] where [CategoryID] = (select max([CategoryID]) from [dbo].[Categories])
