--defaut parametre de�eri girme

Create proc deneme7 ( @parametre varchar(50),@parametre2 varchar(50)='Germany')
as
begin
select * from [dbo].[Customers] where [City] = @parametre  or [Country] = @parametre2
end

exec deneme7 'Berlin' --parametre2 de�eri s�rekli ayn� germany
