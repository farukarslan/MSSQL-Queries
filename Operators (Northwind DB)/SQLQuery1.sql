--product tablosundaki unitprice deðeri ortalamadan yüksek olanlarý göstersin sadece
select * from [dbo].[Products] where [UnitPrice] >= (select avg([UnitPrice]) from [dbo].[Products] ) 
--kategori ýd si en yüksek deger olan prduct tablosunu listele
select * from [dbo].[Products] where [CategoryID] = (select max([CategoryID]) from [dbo].[Categories])
