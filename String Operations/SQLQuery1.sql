--tuzla meslek kelimesini bir de�i�kene at�n�z harfleri par�alayarak alt alta yazd�r�n�z

declare @ad varchar(20)
declare @i int

declare @parca varchar (20)
declare @parca2 varchar(20)
select @ad='tuzla meslek'

select @i = 0
While (@i <= (select len(@ad)))
Begin
select @parca=left(@ad,@i)
select @parca2=right(@parca,1)
Print @parca2
select @i+=1
end


--tuzla meslek b�y�k harfle yazd�rarak yaz� uzunlu�unu g�ster
declare @okul varchar(20)
select @okul = upper('      tuzla meslek')
select @okul
select len(@okul)

--�ndeki boslu�u sil
select @okul = LTRIM(@okul)
select len(@okul)
select @okul

--tuzla mesle�i tersten yazd�racak

select reverse(@okul)

--tuzla mesle�i iki sat�rda yazd�rcak

select SUBSTRING(@okul,1,5) --birden baslay�p 5 karakter al 
select SUBSTRING(@okul,7,6)

