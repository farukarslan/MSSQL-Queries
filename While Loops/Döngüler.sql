
---DÖNGÜLER - KOÞUL ÝFADELERÝ---

--While Döngüsü

declare @i int    --1 den 256 ya kadar yazdýr
select @i =0
while(@i<256)
begin
select @i=@i+1
print @i
end


declare @i int   ---rakamlarýn ascii tablosuna göre karakter karþýlýðý 
select @i =0
while(@i<256)
begin
select @i=@i+1
select char(@i) 
end


declare @s int		-- 1000e kadar 10 ar saydýr en sonda sayýlarýn toplamýný yazdýr
declare @toplam int
select @toplam=0
select @s=0
while(@s<1000)
begin
select @s=@s+10
select @toplam=@toplam+@s
print @s
end
print @toplam


declare @s int		-- 500 e kadar tek sayýlarýn toplamýný bul
declare @toplam int
select @toplam=0
select @s=-1
while(@s<499)
begin
select @s=@s+2
select @toplam=@toplam+@s
print @s
end
print @toplam


declare @ad varchar (250),@i int ,@a varchar (250) -- uzunçayýr kelimesinin har harf ayýrarak yaz
select @i=1
select @ad='uzunçayýr'
while(@i<=(select len(@ad)))
begin
select @a=left (@ad,@i)
select @i=@i+1
select right (@a,1)
end
-------
declare @ad varchar (250),@i int ,@a varchar (250) 
select @i=1
select @ad='uzunçayýr'
while(@i<=(select len(@ad)))
begin		-- yukarýdaki sorunun left ve right ýn yerleri deðiþtirerek kelimeyi tersten yaz 							
select @a=right (@ad,@i)
select @i=@i+1
select left (@a,1)
end


declare @deger nchar(15)
set @deger ='VAHDET'
select (@deger)  --- REVERSE ifadeyi ters çevirir
select REVERSE (@deger)
-----------------------------
declare @deger int
set @deger =25
select (@deger)  --- REVERSE ifadeyi ters çevirir
select REVERSE (@deger)


declare @deger nchar (15)
set @deger ='VAHDET'  --Substring ,ifadenin istedipimiz aralýktaki karakterlerini almamýzý saðlar. 
select SUBSTRING (@deger,4,3) -- ilk parametre ilk karakterin diðeri son karakterin deðeri yazýlýr
--1 den baþlayarak hesapla


declare @deger varchar(250)
declare @i int 
select @i=0
set @deger ='uzunçayýrmetrobüsduraðý'
while (@i<len(@deger))     ---- uzunçayýrmetrobüsduraðý kelimesinin harf harf ayýrarak yaz
begin 
select @i=@i+1
select SUBSTRING (@deger,@i,1)
end

----------------------------------------------------------------------------------------------

--IF ELSE

declare @a int
select @a=avg(SupplierID) from Products
if(@a<20)
begin 
print 'az'
end 
else 
begin
print 'çok'
end


declare @a int ,@b int, @c int
select @a =(select max(UnitsInStock) from Products)
select @b =(select min(UnitsInStock) from Products)
print 'en yüksek '
print @a
print 'en düþük '
print @b
select @c=@a-@b
print'iki sayý arasýndaki fark'
print @c