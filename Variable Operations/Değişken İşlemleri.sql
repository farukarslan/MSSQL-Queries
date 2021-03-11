
---Deðiþken Ýþlemleri----

declare @sayi int
select @sayi=20
select @sayi=@sayi*3
print @sayi


Declare @maliyet int
Declare @gercek int
Declare @kdv int
Select @maliyet = 250
Select @maliyet=@maliyet*3
Select @gercek=@maliyet+@maliyet*0
print @gercek


select dateadd(mm,150,getdate())


DECLARE @x int
SET @x=8
Print('Sayý = '+ CAST(@x as nchar(2)))	---x'i al 2 karakterli nchar'a çevir.


DECLARE @x int
SET @x=8
Print('Sayý = '+ CONVERT(nchar(2),@x)) --x'i al 2 karakterli nchar'a çevir.. (Yukarýdaki ile tamamen ayný)


declare @isim varchar(255)
select @isim='       UZUNÇAYIR'
select @isim=LTRIM(@isim)  --soldaki boþluðu sil küçült yaz
select LOWER(@isim)


declare @deger nchar(15) ---kaç karakter var ve küçült yaz
set @deger ='VahdetGürbüz'
select len (@deger)
select lower (@deger)