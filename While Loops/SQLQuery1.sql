--1'den 100'e kadar sayacak bir while d�ng�s� olu�turunuz.Saya� de�eri 50 oldu�unda d�ng�den ��kan kodu yaz�n�z.
declare @i int
select @i = 0
while (@i<100)
begin
select @i=@i+1
	print @i     --50 yi yazd�ktan sonra devam etmemesi i�in break koyduk d�ng�y� durduruyo
	if(@i=50)
	begin
		print 'saya� 50 oldu'
		break
	end
end


