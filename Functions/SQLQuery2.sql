Create Function satisfiyat(@sonuc smallmoney)
Returns smallmoney
As
Begin
Declare @Kdv smallmoney
Set @Kdv = @sonuc+@sonuc*(0.18)
Return @Kdv
End

select [dbo].[satisfiyat](200) as 'deger'

--�nce �st taraf� �al��t�r�p fonksiyonu �al��t�rd�k
--sonra tabloda 200 de�erinin kdvsini yazd�rd�k 


--soru: kullan�c�dan 0 ile 60 aras�nda girilen rakam�n sin�s de�eri ile cosin�s de�erini �arparak sonucu ekrana yazacak
Create Function sincos(@sonuc2 smallmoney)
Returns smallmoney
As
Begin
Declare @carpma smallmoney
Set @carpma = sin(@sonuc2)* cos(@sonuc2)
Return @carpma
End

select [dbo].[sincos](60) as 'deger2'

