declare @i int
Select @i=0
While (@i<256)
Begin
Select @i=@i+1
select Char(@i) --char ASCII karakterleri gösteriyor
end
--0 dan 1000 e kadar 10ar 10ar yaz ve en son hepsini topla--

declare @sayi int
declare @taho int
select @taho = 0
select @sayi = 0
while(@sayi<1000)
begin
select  @sayi=@sayi+10
select @taho += @sayi
Print @sayi
end
 Print 'Toplam :'
Print @taho


--1 den 500 e kadar olan tek sayýlarýn toplamý

declare @sayi2 int
declare @taho2 int
select @taho2 = 0
select @sayi2 = -1
while(@sayi2<499)
begin
select  @sayi2=@sayi2+2
select @taho2 += @sayi2
Print @sayi2
end
 Print 'Toplam :'
Print @taho2