--city ve country parametreleri stored prosedure
Create proc deneme6 ( @parametre varchar(10),@parametre2 varchar(10))
as
begin
select * from [dbo].[Customers] where [City] = @parametre  or [Country] = @parametre2
end

exec deneme6 'Berlin','Germany'