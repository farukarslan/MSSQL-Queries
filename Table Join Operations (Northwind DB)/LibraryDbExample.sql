USE [master]
GO
CREATE DATABASE [dbProgrammingSQL] 
GO
USE [dbProgrammingSQL] 
GO
CREATE TABLE [dbo].[Kitap](
	[kitapNo] [int] NOT NULL,
	[kitapAdi] [nvarchar](63) NOT NULL,
	[ISBNNo] [nvarchar](15) NULL,
	[sayfaSayisi] [int] NULL,
	[kitapOzeti] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaKitap_PK] PRIMARY KEY NONCLUSTERED 
(
	[kitapNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (1, N'Visual Basic.NET', N'0-672-32203-X', 204, N'Visual Basic.NET konusunda temel geçis bilgilerini içerien bir kitap.')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (2, N'Telkin ve Hipnoz ile ögrenme Teknikleri', N'975-6700-15-7', 274, N'ögrenme ve sinav konusunda hipnoz teknigi')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (3, N'Yatirim Plani Yapma', N'975-381-263-9', 74, N'Yatirim yapmak için nereden baslamali, neler yapmali...')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (4, N'Is Basinda Duygusal Zeka', N'975-434-224-5', 447, N'Duygusal zekanin is ve yasam konusundaki etkileri')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (5, N'Hayat Yolunda zorluklarla Mücadele', N'975-362-135-3', 119, N'Hayat Yolunda zorluklarla Mücadele')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (6, N'Is Hayatinda Motivasyon', N'975-8243-98-5', 140, N'Is basinda Motivasyon')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (7, N'Is Hayatimdan Kesitler ve Gençlere tavsiyler', N'975-8243-92-6', 214, N'Üzeyir Garih''in hayatindan kesitler')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (8, N'PERL ile CGI', N'975-316-609-5', 247, N'perl cgi konusunda kaynak kitap')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (9, N'Front Page 2000', N'975-316-565-7', 349, N'front page')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (10, N'Bir Çift yürek', N'975-7800-25-2', 225, N'Aborjini aileleri, Avustralyan''in yerlileri')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (11, N'Marka Yaratmanin 22 Kurali', N'975-8378-30-9', 164, N'Marka olmaya karar verenlerin okumasi gereken bir kitap')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (12, N'Simyaci', N'975-510-682-0', 166, N'Bir simyacinin romani')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (13, N'Bellek Gelistirme', N'975-503-069-7', 224, N'Bellek gelistirme konusunda bir kurs kitabi')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (14, N'Müsteri Baglantilari', N'975-316-622-2', 292, N'Bir Harward isletme kitabi')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (15, N'Insan Yönetme Sanati', N'975-8243-00-4', 144, N'Yöneticiler için iyi bir kitap')
INSERT [dbo].[Kitap] ([kitapNo], [kitapAdi], [ISBNNo], [sayfaSayisi], [kitapOzeti]) VALUES (16, N'Önümüzdeki Yol', N'975-509-170-X', 328, N'Internet ve BT dünyasinin gelecegine dair Bill Gates''in görüsleri')
/****** Object:  Table [dbo].[yazar]    Script Date: 05/28/2015 17:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yazar](
	[yazarNo] [int] NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[dogum] [nvarchar](50) NULL,
	[hayatOzeti] [nvarchar](255) NULL,
 CONSTRAINT [aaaaayazar_PK] PRIMARY KEY NONCLUSTERED 
(
	[yazarNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'yazarNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'yazarNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'adi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'adi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'soyadi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'soyadi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'dogum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'dogum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'dogum'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'hayatOzeti' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'hayatOzeti' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar', @level2type=N'COLUMN',@level2name=N'hayatOzeti'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30.06.2003 21:58:06' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03.03.2009 09:10:23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'yazar'
GO
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (1, N'Craig', N'UTLEY', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (2, N'Bill', N'GATES', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (3, N'Adil', N'MAVIS', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (4, N'Brian', N'FINCH', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (5, N'Daniel', N'GOLEMAN', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (6, N'Uzeyir', N'GARIH', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (7, N'Yusuf', N'AKYOL', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (8, N'Marlo', N'MORGAN', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (9, N'Adem', N'GÜNES', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (10, N'Al', N'RIES', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (11, N'Laura', N'RIES', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (12, N'Paulo', N'COELHO', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (13, N'Roland R.', N'GEISHELHART', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (14, N'Marion', N'ZERBST', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (15, N'Prof Herbert N.', N'CASSON', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (16, N'Andrew S.', N'GROVE', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (17, N'Rama Dev', N'JAGER', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (18, N'Rafael', N'ORTIZ', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (19, N'Robert E.', N'WAYLAND', NULL, NULL)
INSERT [dbo].[yazar] ([yazarNo], [adi], [soyadi], [dogum], [hayatOzeti]) VALUES (20, N'PAUL M.', N'COLE', NULL, NULL)
/****** Object:  Table [dbo].[uye]    Script Date: 05/28/2015 17:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uye](
	[uyeNo] [int] NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[adresi] [nvarchar](255) NULL,
	[aktifMi] [bit] NOT NULL,
 CONSTRAINT [aaaaauye_PK] PRIMARY KEY NONCLUSTERED 
(
	[uyeNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'uyeNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'uyeNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'uye_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'adi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'adi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'uye_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'soyadi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'soyadi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'uye_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'soyadi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'adresi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'adresi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'uye_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'adresi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'aktifMi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'aktifMi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'uye_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye', @level2type=N'COLUMN',@level2name=N'aktifMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30.06.2003 21:58:06' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03.03.2009 09:10:24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'uye_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'uye'
GO
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (1, N'Irem', N'AKYOL', N'ABC Sok. NO:2 AYAS/ANKARA', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (2, N'Yusuf', N'GÖZÜDELI', N'BCD Sok. NO:5 K.MARAS', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (3, N'Tugay', N'ERYATAN', N'Ahmetler Sok. No:2 ANKARA', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (4, N'Tugay', N'GEÇKALAN', N'Mehmetler Sok. No:20 ARDAHAN', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (5, N'Yusuf', N'KEÇELI', N'JFK Sok. No:20 BAHÇELIEVLER/ANKAR', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (6, N'Salih', N'ERYATAN', N'Ahmetler Sok. No:2 ANKARA', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (7, N'Osman', N'AKYOL', N'ABC Sok. NO:2 AYAS/ANKARA', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (8, N'Yusuf', N'OZAN', N'Mehmetler Sok. No:20 VAN', 1)
INSERT [dbo].[uye] ([uyeNo], [adi], [soyadi], [adresi], [aktifMi]) VALUES (9, N'Bill', N'GATES', N'Washington DC.', 1)
/****** Object:  Table [dbo].[tur]    Script Date: 05/28/2015 17:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tur](
	[turNo] [int] NOT NULL,
	[turAciklama] [nvarchar](50) NULL,
 CONSTRAINT [aaaaatur_PK] PRIMARY KEY NONCLUSTERED 
(
	[turNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'turNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'turNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tur_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'turAciklama' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'turAciklama' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'tur_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur', @level2type=N'COLUMN',@level2name=N'turAciklama'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30.06.2003 21:58:06' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03.03.2009 09:10:24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'tur_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tur'
GO
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (1, N'Hikaye')
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (2, N'Siir')
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (3, N'BT')
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (4, N'Masal')
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (5, N'Is Dünyasi')
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (6, N'Kisisel Gelisim')
INSERT [dbo].[tur] ([turNo], [turAciklama]) VALUES (7, N'Programlama')
/****** Object:  Table [dbo].[odunc]    Script Date: 05/28/2015 17:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[odunc](
	[oduncNo] [int] NOT NULL,
	[kitapNo] [int] NULL,
	[uyeNo] [int] NULL,
	[vermeTarihi] [datetime] NULL,
	[vermeSuresi] [int] NULL,
	[geldiMi] [bit] NOT NULL,
 CONSTRAINT [aaaaaodunc_PK] PRIMARY KEY NONCLUSTERED 
(
	[oduncNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Kitapodunc] ON [dbo].[odunc] 
(
	[kitapNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [uyeodunc] ON [dbo].[odunc] 
(
	[uyeNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'oduncNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'oduncNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'oduncNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitapNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'kitapNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'uyeNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'uyeNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'uyeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'vermeTarihi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'vermeTarihi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeTarihi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'vermeSuresi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'vermeSuresi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'vermeSuresi'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'geldiMi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'geldiMi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'COLUMN',@level2name=N'geldiMi'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30.06.2003 21:58:05' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03.03.2009 09:10:24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'odunc_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc'
GO
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (1, 1, 1, CAST(0x000092F400000000 AS DateTime), 15, 1)
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (2, 5, 2, CAST(0x000092F400000000 AS DateTime), 15, 1)
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (3, 1, 1, CAST(0x0000930700000000 AS DateTime), 15, 1)
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (4, 6, 3, CAST(0x0000931E00000000 AS DateTime), 10, 1)
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (5, 1, 1, CAST(0x000093A000000000 AS DateTime), 15, 0)
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (6, 2, 3, CAST(0x0000939E00000000 AS DateTime), 10, 0)
INSERT [dbo].[odunc] ([oduncNo], [kitapNo], [uyeNo], [vermeTarihi], [vermeSuresi], [geldiMi]) VALUES (7, 3, 2, CAST(0x0000939F00000000 AS DateTime), 15, 0)
/****** Object:  Table [dbo].[kitap_yazar]    Script Date: 05/28/2015 17:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kitap_yazar](
	[kitap_yazarNo] [int] NOT NULL,
	[yazarNo] [int] NULL,
	[kitapNo] [int] NULL,
 CONSTRAINT [aaaaakitap_yazar_PK] PRIMARY KEY NONCLUSTERED 
(
	[kitap_yazarNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Kitapkitap_yazar] ON [dbo].[kitap_yazar] 
(
	[kitapNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [yazarkitap_yazar] ON [dbo].[kitap_yazar] 
(
	[yazarNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitap_yazarNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'kitap_yazarNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'kitap_yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitap_yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'yazarNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'yazarNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'kitap_yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'yazarNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitapNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'kitapNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'kitap_yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30.06.2003 21:58:05' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03.03.2009 09:10:24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitap_yazar_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar'
GO
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (1, 1, 1)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (2, 3, 2)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (3, 4, 3)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (4, 5, 4)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (5, 15, 5)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (6, 6, 6)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (7, 6, 7)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (8, 9, 8)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (9, 7, 9)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (10, 8, 10)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (11, 10, 11)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (12, 11, 11)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (13, 12, 12)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (14, 13, 13)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (15, 14, 13)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (16, 19, 14)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (17, 20, 14)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (18, 15, 15)
INSERT [dbo].[kitap_yazar] ([kitap_yazarNo], [yazarNo], [kitapNo]) VALUES (19, 1, 16)
/****** Object:  Table [dbo].[kitap_tur]    Script Date: 05/28/2015 17:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kitap_tur](
	[kitapNo] [int] NOT NULL,
	[turNo] [int] NOT NULL,
 CONSTRAINT [aaaaakitap_tur_PK] PRIMARY KEY NONCLUSTERED 
(
	[kitapNo] ASC,
	[turNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [kitap_turkitapNo] ON [dbo].[kitap_tur] 
(
	[kitapNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Kitapkitap_tur] ON [dbo].[kitap_tur] 
(
	[kitapNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [turkitap_tur] ON [dbo].[kitap_tur] 
(
	[turNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitapNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'kitapNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'kitap_tur_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'kitapNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'turNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'turNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'kitap_tur_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'COLUMN',@level2name=N'turNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30.06.2003 21:58:05' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03.03.2009 09:10:25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitap_tur_yerel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur'
GO
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (1, 7)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (2, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (3, 5)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (3, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (4, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (5, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (6, 5)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (6, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (7, 5)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (7, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (8, 7)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (9, 7)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (10, 1)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (11, 5)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (12, 1)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (13, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (14, 5)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (15, 5)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (15, 6)
INSERT [dbo].[kitap_tur] ([kitapNo], [turNo]) VALUES (16, 3)
/****** Object:  Default [DF__uye__aktifMi__00551192]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[uye] ADD  DEFAULT ((0)) FOR [aktifMi]
GO
/****** Object:  Default [DF__odunc__geldiMi__08EA5793]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[odunc] ADD  DEFAULT ((0)) FOR [geldiMi]
GO
/****** Object:  ForeignKey [odunc_FK00]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[odunc]  WITH CHECK ADD  CONSTRAINT [odunc_FK00] FOREIGN KEY([kitapNo])
REFERENCES [dbo].[Kitap] ([kitapNo])
GO
ALTER TABLE [dbo].[odunc] CHECK CONSTRAINT [odunc_FK00]
GO
/****** Object:  ForeignKey [odunc_FK01]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[odunc]  WITH CHECK ADD  CONSTRAINT [odunc_FK01] FOREIGN KEY([uyeNo])
REFERENCES [dbo].[uye] ([uyeNo])
GO
ALTER TABLE [dbo].[odunc] CHECK CONSTRAINT [odunc_FK01]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'''uye'' ve ''odunc'' tabloları arasındaki ilişki kısıtlaması nedeniyle bu kaydı ekleyemez, değiştiremez veya silemezsiniz.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'odunc', @level2type=N'CONSTRAINT',@level2name=N'odunc_FK01'
GO
/****** Object:  ForeignKey [kitap_yazar_FK00]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[kitap_yazar]  WITH CHECK ADD  CONSTRAINT [kitap_yazar_FK00] FOREIGN KEY([kitapNo])
REFERENCES [dbo].[Kitap] ([kitapNo])
GO
ALTER TABLE [dbo].[kitap_yazar] CHECK CONSTRAINT [kitap_yazar_FK00]
GO
/****** Object:  ForeignKey [kitap_yazar_FK01]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[kitap_yazar]  WITH CHECK ADD  CONSTRAINT [kitap_yazar_FK01] FOREIGN KEY([yazarNo])
REFERENCES [dbo].[yazar] ([yazarNo])
GO
ALTER TABLE [dbo].[kitap_yazar] CHECK CONSTRAINT [kitap_yazar_FK01]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'''yazar'' ve ''kitap_yazar'' tabloları arasındaki ilişki kısıtlaması nedeniyle bu kaydı ekleyemez, değiştiremez veya silemezsiniz.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_yazar', @level2type=N'CONSTRAINT',@level2name=N'kitap_yazar_FK01'
GO
/****** Object:  ForeignKey [kitap_tur_FK00]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[kitap_tur]  WITH CHECK ADD  CONSTRAINT [kitap_tur_FK00] FOREIGN KEY([kitapNo])
REFERENCES [dbo].[Kitap] ([kitapNo])
GO
ALTER TABLE [dbo].[kitap_tur] CHECK CONSTRAINT [kitap_tur_FK00]
GO
/****** Object:  ForeignKey [kitap_tur_FK01]    Script Date: 05/28/2015 17:55:35 ******/
ALTER TABLE [dbo].[kitap_tur]  WITH CHECK ADD  CONSTRAINT [kitap_tur_FK01] FOREIGN KEY([turNo])
REFERENCES [dbo].[tur] ([turNo])
GO
ALTER TABLE [dbo].[kitap_tur] CHECK CONSTRAINT [kitap_tur_FK01]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'''tur'' ve ''kitap_tur'' tabloları arasındaki ilişki kısıtlaması nedeniyle bu kaydı ekleyemez, değiştiremez veya silemezsiniz.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'kitap_tur', @level2type=N'CONSTRAINT',@level2name=N'kitap_tur_FK01'
GO
