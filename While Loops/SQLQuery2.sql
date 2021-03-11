--1 den baþlayarak 200 e kadar tek sayýlarýn toplamýný yazdýrn programý yaýnýz.
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