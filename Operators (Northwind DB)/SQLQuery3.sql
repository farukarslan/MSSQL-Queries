--order tablosunda empoyeeID 3 olan ürünlerin freight deðerlerinin ortalamasýný alacak sql kodunu yazýnýz.
select avg([Freight]) from [dbo].[Orders] where [EmployeeID] = 3

--
declare @verý money
select @verý =(select avg([Freight]) from [dbo].[Orders] where [EmployeeID] = 3)
if(@verý<100)
begin
print 'UYGUN FÝYAT'
end
else if(@verý>100)
begin
print 'NAKLÝYE PAHALLI'
end

--order tablosundaki employeeID si en düþük ve en yüksek olan sayýyý ve aralrýndaki farký yazdýran sorguyu yazýnýz
declare @endusuk int
declare @enbuyuk int
declare @fark int

select @endusuk = MIN([EmployeeID]) from [dbo].[Orders]
select @enbuyuk = MAX([EmployeeID]) from [dbo].[Orders] 
select @fark = @enbuyuk - @endusuk

print @endusuk
print @enbuyuk
print 'fark :'
print @fark

--Bir tane a deðiþkenine rakam atanacak, atanan rakam eðer 0 ile 30 arasýnda ise baþarýsýz ,30 ile 45 arasýnda ise biraz daha çalýþ, 45 ile 70
--arasýnda ise iyi yazacak, 70 ile 100 arasýnda ise tebrikler bunlarýn dýþýnda ise hatalý giriþ

Declare @a int
select @a = 89

if(@a<31)
begin
print 'BAÞARISIZ'
end
else if(@a<46)
begin
print 'BÝRAZ DAHA ÇALIS'
END
else if(@a<71)
begin
print 'ÝYÝ'
end
else if(@a<101)
begin
print 'TEBRÝKLER'
end
else
begin 
print 'HATALI GÝRÝÞ'
end

--1 den 100 e kadar sayýlarý while döngüsü ile sýrala , sayaç 50 olunca dur