
---De�i�ken ��lemleri----

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
Print('Say� = '+ CAST(@x as nchar(2)))	---x'i al 2 karakterli nchar'a �evir.


DECLARE @x int
SET @x=8
Print('Say� = '+ CONVERT(nchar(2),@x)) --x'i al 2 karakterli nchar'a �evir.. (Yukar�daki ile tamamen ayn�)


declare @isim varchar(255)
select @isim='       UZUN�AYIR'
select @isim=LTRIM(@isim)  --soldaki bo�lu�u sil k���lt yaz
select LOWER(@isim)


declare @deger nchar(15) ---ka� karakter var ve k���lt yaz
set @deger ='VahdetG�rb�z'
select len (@deger)
select lower (@deger)