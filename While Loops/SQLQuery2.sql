--1 den ba�layarak 200 e kadar tek say�lar�n toplam�n� yazd�rn program� ya�n�z.
declare @toplam int
declare @i int 
select @i = 1
select @toplam = 0
while (@i<200)
begin
		select @toplam = @toplam +@i
		select @i = @i+2
end
print @toplam