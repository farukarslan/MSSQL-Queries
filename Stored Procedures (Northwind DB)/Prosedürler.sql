
--Prosedürler


create proc Sehirler
(
@sehir1 nvarchar(50),
@sehir2 nvarchar(50)
)							
as
begin
select * from Customers
where City= @sehir1 or City =@sehir2
end
exec Sehirler'Berlin','London'

-----------------------------------------------------------------------------

create proc Urun
(
@urun1 nvarchar(50)
)
as
begin
select * from Products
where (ProductName=@urun1 and UnitsInStock>30) 
end
exec Urun 'Chai'

-----------------------------------------------------------------------------

create proc Urun2
(
@stok nvarchar(50)   -- stoðu 30 un üzerinde olan ürünleri getir
)
as
begin
select * from Products
where UnitsInStock >= @stok
end
exec Urun2'30'

-----------------------------------------------------------------------------

create proc Note
(
@ad nvarchar(50)  ,
@soyad nvarchar(50) 
)
as
begin
declare @a int,@b int , @c int, @d int
select @a=(select Yazili1 from Ogrenci where @ad=OgrAD and @soyad=OgrSoyad)
select @b=(select Yazili2 from Ogrenci where @ad=OgrAD and @soyad=OgrSoyad)
select @c=(select Sozlu from Ogrenci where @ad=OgrAD and @soyad=OgrSoyad)
select @d=(@a +@b+@c)/3
print @d
end
exec Note 'Erdem ' ,'Çýnar'