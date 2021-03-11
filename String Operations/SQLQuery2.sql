--substring kullanarak uzunçayýr metrobüs duraðý harf harf alt alta yazdýrýnýz
declare @ad nvarchar(50)
declare @i int

select @i=1
select @ad = 'uzunçayýr metrobüs duraðý'
while (@i< len(@ad)+1)
begin
select SUBSTRING(@ad,@i,1)
select @i=@i+1
end