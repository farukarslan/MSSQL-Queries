--order details tablosu i�in productID G�R�LD���NDE UN�TPR�CE TOPLAMLARINI VE QUANT�TY TOPLAMLARINI YAZAN
--STORE PROSEDURE PRORAMINI YAZINIZ

create proc deneme9 (@parametre nvarchar(50))
as
begin
	declare @a int
	select @a =  0
	select @a += (select sum(UnitPrice) from dbo.[Order Details] where @parametre = ProductID)
 	select @a += (select sum(Quantity) from dbo.[Order Details] where @parametre = ProductID)
	print @a
end

exec deneme9 '1'