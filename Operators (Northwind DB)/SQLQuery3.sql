--order tablosunda empoyeeID 3 olan �r�nlerin freight de�erlerinin ortalamas�n� alacak sql kodunu yaz�n�z.
select avg([Freight]) from [dbo].[Orders] where [EmployeeID] = 3

--
declare @ver� money
select @ver� =(select avg([Freight]) from [dbo].[Orders] where [EmployeeID] = 3)
if(@ver�<100)
begin
print 'UYGUN F�YAT'
end
else if(@ver�>100)
begin
print 'NAKL�YE PAHALLI'
end

--order tablosundaki employeeID si en d���k ve en y�ksek olan say�y� ve aralr�ndaki fark� yazd�ran sorguyu yaz�n�z
declare @endusuk int
declare @enbuyuk int
declare @fark int

select @endusuk = MIN([EmployeeID]) from [dbo].[Orders]
select @enbuyuk = MAX([EmployeeID]) from [dbo].[Orders] 
select @fark = @enbuyuk - @endusuk

print @endusuk
print @enbuyuk
print 'fark :'
print @fark

--Bir tane a de�i�kenine rakam atanacak, atanan rakam e�er 0 ile 30 aras�nda ise ba�ar�s�z ,30 ile 45 aras�nda ise biraz daha �al��, 45 ile 70
--aras�nda ise iyi yazacak, 70 ile 100 aras�nda ise tebrikler bunlar�n d���nda ise hatal� giri�

Declare @a int
select @a = 89

if(@a<31)
begin
print 'BA�ARISIZ'
end
else if(@a<46)
begin
print 'B�RAZ DAHA �ALIS'
END
else if(@a<71)
begin
print '�Y�'
end
else if(@a<101)
begin
print 'TEBR�KLER'
end
else
begin 
print 'HATALI G�R��'
end

--1 den 100 e kadar say�lar� while d�ng�s� ile s�rala , saya� 50 olunca dur