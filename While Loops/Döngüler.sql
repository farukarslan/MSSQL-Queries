
---D�NG�LER - KO�UL �FADELER�---

--While D�ng�s�

declare @i int    --1 den 256 ya kadar yazd�r
select @i =0
while(@i<256)
begin
select @i=@i+1
print @i
end


declare @i int   ---rakamlar�n ascii tablosuna g�re karakter kar��l��� 
select @i =0
while(@i<256)
begin
select @i=@i+1
select char(@i) 
end


declare @s int		-- 1000e kadar 10 ar sayd�r en sonda say�lar�n toplam�n� yazd�r
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


declare @s int		-- 500 e kadar tek say�lar�n toplam�n� bul
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


declare @ad varchar (250),@i int ,@a varchar (250) -- uzun�ay�r kelimesinin har harf ay�rarak yaz
select @i=1
select @ad='uzun�ay�r'
while(@i<=(select len(@ad)))
begin
select @a=left (@ad,@i)
select @i=@i+1
select right (@a,1)
end
-------
declare @ad varchar (250),@i int ,@a varchar (250) 
select @i=1
select @ad='uzun�ay�r'
while(@i<=(select len(@ad)))
begin		-- yukar�daki sorunun left ve right �n yerleri de�i�tirerek kelimeyi tersten yaz 							
select @a=right (@ad,@i)
select @i=@i+1
select left (@a,1)
end


declare @deger nchar(15)
set @deger ='VAHDET'
select (@deger)  --- REVERSE ifadeyi ters �evirir
select REVERSE (@deger)
-----------------------------
declare @deger int
set @deger =25
select (@deger)  --- REVERSE ifadeyi ters �evirir
select REVERSE (@deger)


declare @deger nchar (15)
set @deger ='VAHDET'  --Substring ,ifadenin istedipimiz aral�ktaki karakterlerini almam�z� sa�lar. 
select SUBSTRING (@deger,4,3) -- ilk parametre ilk karakterin di�eri son karakterin de�eri yaz�l�r
--1 den ba�layarak hesapla


declare @deger varchar(250)
declare @i int 
select @i=0
set @deger ='uzun�ay�rmetrob�sdura��'
while (@i<len(@deger))     ---- uzun�ay�rmetrob�sdura�� kelimesinin harf harf ay�rarak yaz
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
print '�ok'
end


declare @a int ,@b int, @c int
select @a =(select max(UnitsInStock) from Products)
select @b =(select min(UnitsInStock) from Products)
print 'en y�ksek '
print @a
print 'en d���k '
print @b
select @c=@a-@b
print'iki say� aras�ndaki fark'
print @c