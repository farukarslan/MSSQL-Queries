--substring kullanarak uzun�ay�r metrob�s dura�� harf harf alt alta yazd�r�n�z
declare @ad nvarchar(50)
declare @i int

select @i=1
select @ad = 'uzun�ay�r metrob�s dura��'
while (@i< len(@ad)+1)
begin
select SUBSTRING(@ad,@i,1)
select @i=@i+1
end