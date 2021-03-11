--tuzla meslek kelimesini bir deðiþkene atýnýz harfleri parçalayarak alt alta yazdýrýnýz

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


--tuzla meslek büyük harfle yazdýrarak yazý uzunluðunu göster
declare @okul varchar(20)
select @okul = upper('      tuzla meslek')
select @okul
select len(@okul)

--öndeki bosluðu sil
select @okul = LTRIM(@okul)
select len(@okul)
select @okul

--tuzla mesleði tersten yazdýracak

select reverse(@okul)

--tuzla mesleði iki satýrda yazdýrcak

select SUBSTRING(@okul,1,5) --birden baslayýp 5 karakter al 
select SUBSTRING(@okul,7,6)

