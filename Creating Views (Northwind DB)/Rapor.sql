--unitystock quertiy unit g�stersin e�er 0 la 20 aras�ndaysa sat�n almaya haber ver 20 
--ile 50 aras�ndaysa s�n�rda 50 nin �zerindeyse stok yeterli desin
create view  stoks�n�r1 as
select [UnitPrice],[UnitsInStock],'Stok Durumu'=
case
When [UnitsInStock] between 0 and 20 then 'sat�n almaya haber ver'
When [UnitsInStock] between 20 and 50 then 'stok s�n�rda'
When [UnitsInStock] >= 50 then 'stok yeterli'
else 'hi�bir fikrim yok'
end
from [dbo].[Products]