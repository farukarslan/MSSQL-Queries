--1'den 100'e kadar sayacak bir while döngüsü oluþturunuz.Sayaç deðeri 50 olduðunda döngüden çýkan kodu yazýnýz.
declare @i int
select @i = 0
while (@i<100)
begin
select @i=@i+1
	print @i     --50 yi yazdýktan sonra devam etmemesi için break koyduk döngüyü durduruyo
	if(@i=50)
	begin
		print 'sayaç 50 oldu'
		break
	end
end


