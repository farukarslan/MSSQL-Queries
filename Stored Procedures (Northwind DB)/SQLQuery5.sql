--customers tablosundaki city alan� parametre olarak girilecek store prosed�r� yaz�n�z.

Create proc deneme3 ( @parametre varchar(10))
as
begin
select * from [dbo].[Customers] where [City] = @parametre 
end

exec deneme3 'Paris'