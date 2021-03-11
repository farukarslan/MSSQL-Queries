Create Function satisfiyat(@sonuc smallmoney)
Returns smallmoney
As
Begin
Declare @Kdv smallmoney
Set @Kdv = @sonuc+@sonuc*(0.18)
Return @Kdv
End

select [dbo].[satisfiyat](200) as 'deger'

--önce üst tarafý çalýþtýrýp fonksiyonu çalýþtýrdýk
--sonra tabloda 200 deðerinin kdvsini yazdýrdýk 


--soru: kullanýcýdan 0 ile 60 arasýnda girilen rakamýn sinüs deðeri ile cosinüs deðerini çarparak sonucu ekrana yazacak
Create Function sincos(@sonuc2 smallmoney)
Returns smallmoney
As
Begin
Declare @carpma smallmoney
Set @carpma = sin(@sonuc2)* cos(@sonuc2)
Return @carpma
End

select [dbo].[sincos](60) as 'deger2'

