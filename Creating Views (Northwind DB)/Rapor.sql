--unitystock quertiy unit göstersin eðer 0 la 20 arasýndaysa satýn almaya haber ver 20 
--ile 50 arasýndaysa sýnýrda 50 nin üzerindeyse stok yeterli desin
create view  stoksýnýr1 as
select [UnitPrice],[UnitsInStock],'Stok Durumu'=
case
When [UnitsInStock] between 0 and 20 then 'satýn almaya haber ver'
When [UnitsInStock] between 20 and 50 then 'stok sýnýrda'
When [UnitsInStock] >= 50 then 'stok yeterli'
else 'hiçbir fikrim yok'
end
from [dbo].[Products]