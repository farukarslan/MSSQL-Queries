--customers tablosundaki city alaný parametre olarak girilecek store prosedürü yazýnýz.

Create proc deneme3 ( @parametre varchar(10))
as
begin
select * from [dbo].[Customers] where [City] = @parametre 
end

exec deneme3 'Paris'