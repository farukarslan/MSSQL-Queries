Declare @sayi int
select @sayi = 0
While (@sayi<256)
Begin
select @sayi+=1;
Print @sayi
end
