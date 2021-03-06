CREATE DATABASE DOAN
USE [DOAN]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/14/2018 1:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](30) NULL,
	[PASS] [varchar](30) NULL,
	[HOTEN] [nvarchar](50) NULL,
	[GIOITINH] [bit] NULL,
	[NGAYSINH] [smalldatetime] NULL,
	[SDT] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LICHCHIEU]    Script Date: 12/14/2018 1:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHCHIEU](
	[MARAP] [int] NOT NULL,
	[MASUAT] [int] NOT NULL,
	[MAPHIM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MARAP] ASC,
	[MASUAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIM]    Script Date: 12/14/2018 1:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIM](
	[MAPHIM] [int] IDENTITY(1,1) NOT NULL,
	[TENPHIM] [nvarchar](50) NULL,
	[HINHANH] [nvarchar](100) NULL,
	[NGAYCONGCHIEU] [varchar](50) NULL,
	[MOTA] [nvarchar](max) NULL,
	[GIA] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPHIM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYVE]    Script Date: 12/14/2018 1:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYVE](
	[MAVE] [int] IDENTITY(1,1) NOT NULL,
	[MASUAT] [int] NULL,
	[MARAP] [int] NULL,
	[NGAYDAT] [varchar](50) NULL,
	[MAGHE] [int] NULL,
	[MAKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAP]    Script Date: 12/14/2018 1:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAP](
	[MARAP] [int] IDENTITY(1,1) NOT NULL,
	[SOGHE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MARAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUATCHIEU]    Script Date: 12/14/2018 1:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUATCHIEU](
	[MASUAT] [int] IDENTITY(1,1) NOT NULL,
	[GIOBATDAU] [varchar](50) NULL,
	[GIOKETTHUC] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASUAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [USERNAME], [PASS], [HOTEN], [GIOITINH], [NGAYSINH], [SDT]) VALUES (1, N'trungvo1', N'trung123', N'Võ Đình Phước Trung', 1, (N'1997-09-17'), N'0903954774')
INSERT [dbo].[KHACHHANG] ([MAKH], [USERNAME], [PASS], [HOTEN], [GIOITINH], [NGAYSINH], [SDT]) VALUES (2, N'tugiap', N'tugiap', N'Phạm Ngọc Tú', 1, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [USERNAME], [PASS], [HOTEN], [GIOITINH], [NGAYSINH], [SDT]) VALUES (3, N'dinhmanh', N'dinhmanh', N'Lê Đình Mạnh', 1, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [USERNAME], [PASS], [HOTEN], [GIOITINH], [NGAYSINH], [SDT]) VALUES (4, N'thanhsang', N'thanhsang', N'Hồ Thanh Sáng', 1, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [USERNAME], [PASS], [HOTEN], [GIOITINH], [NGAYSINH], [SDT]) VALUES (5, N'dinhphu', N'dinhphu', N'Đỗ Nguyễn Đình Phú', 1, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [USERNAME], [PASS], [HOTEN], [GIOITINH], [NGAYSINH], [SDT]) VALUES (6, N'vancap', N'vancap', N'Dương Văn Cấp', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 1, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 2, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 3, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 4, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 5, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 6, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (1, 7, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 1, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 2, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 3, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 4, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 5, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 6, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (2, 7, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 1, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 2, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 3, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 4, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 5, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 6, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (3, 7, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 1, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 2, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 3, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 4, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 5, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 6, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (4, 7, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 1, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 2, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 3, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 4, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 5, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 6, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (5, 7, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 1, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 2, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 3, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 4, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 5, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 6, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (6, 7, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 1, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 2, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 3, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 4, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 5, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 6, 4)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (7, 7, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 1, 1)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 2, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 3, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 4, 2)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 5, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 6, 3)
INSERT [dbo].[LICHCHIEU] ([MARAP], [MASUAT], [MAPHIM]) VALUES (8, 7, 1)
SET IDENTITY_INSERT [dbo].[PHIM] ON 

INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM],[HINHANH], [NGAYCONGCHIEU], [MOTA], [GIA]) VALUES (1, N'AQUAMAN: ĐẾ VƯƠNG ATLANTIS','aquaman.jpg', (N'2018-12-14T00:00:00'), N'Câu chuyện của Đế Vương Atlantis tiếp nối sau những sự kiện xảy ra trong Justice League – Liên Minh Công Lý. Theo đó, Arthur Curry/Aquaman bắt đầu trị vì vương quốc dưới biển sâu Atlantics, và đứng trong tình thế khó xử là những cư dân trên cạn luôn gây ô nhiễm môi trường toàn cầu trong khi người dân Atlantics luôn sẵn sàng để chiếm lấy đất liền. Bên cạnh đó, hải vương Aquaman còn phải đối mặt với những kẻ thù lăm le đe đọa nền hòa bình và yên ổn của vương quốc mình.', 80000)
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM],[HINHANH], [NGAYCONGCHIEU], [MOTA], [GIA]) VALUES (2, N'BÍ KÍP LUYỆN RỒNG: VÙNG ĐẤT BÍ ẨN
','bikiprong.jpg',(N'2018-12-14T00:00:00'), N'Sau khi Hiccup tạo ra một thế giới hòa bình cho loài rồng, Răng Sún phát hiện ra một người bạn mới đầy bí hiểm. Lúc này Hiccup đã trở thành người lãnh đạo của cả làng gánh trên vai trọng trách gìn giữ sự an nguy cho mọi người. Vì vậy, cậu không thể mãi bị cuốn theo những cuộc phiêu lưu bất tận với Răng Sún. Và khi nguy hiểm ập đến ngôi làng, cả Hiccup và Răng Sún đều đã đứng lên, anh dũng bảo vệ giống loài của mình.', 80000)
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM],[HINHANH], [NGAYCONGCHIEU], [MOTA], [GIA]) VALUES (3, N'ĐẠI ÚY MARVEL
','captainmarvel.jpg',(N'2018-12-14T00:00:00'), N'Lấy bối cảnh những năm 90s, Captain Marvel là một cuộc phiêu lưu hoàn toàn mới đến với một thời kỳ chưa từng xuất hiện trong vũ trụ điện ảnh Marvel. Bộ phim kể về con đường trở thành siêu anh hùng mạnh mẽ nhất vũ trụ của Carol Danvers. Bên cạnh đó, trận chiến ảnh hưởng đến toàn vũ trụ giữa tộc Kree và tộc Skrull đã lan đến Trái Đất, liệu Danvers và các đồng minh có thể ngăn chặn binh đoàn Skrull cũng như các thảm họa tương lai?', 80000)
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM],[HINHANH], [NGAYCONGCHIEU], [MOTA], [GIA]) VALUES (4, N'TOY STORY 4
','toystory4.jpg',(N'2018-12-18T00:00:00'), N'Sự trở lại rất hào hứng của dàn đồ chơi quen thuộc như Woody, Buzz Lightyear, Jessie... cùng hai nhân vật mới sẽ xuất hiện trong Toy Story4: Ducky và Bunny!', 80000)
SET IDENTITY_INSERT [dbo].[PHIM] OFF
SET IDENTITY_INSERT [dbo].[RAP] ON 

INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (1, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (2, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (3, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (4, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (5, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (6, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (7, 48)
INSERT [dbo].[RAP] ([MARAP], [SOGHE]) VALUES (8, 48)
SET IDENTITY_INSERT [dbo].[RAP] OFF
SET IDENTITY_INSERT [dbo].[SUATCHIEU] ON 

INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (1, (N'07:00:00'  ), (N'09:00:00'  ))
INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (2, (N'09:30:00'  ), (N'11:30:00'  ))
INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (3, (N'12:00:00'  ), (N'14:00:00'  ))
INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (4, (N'14:30:00'  ), (N'16:30:00'  ))
INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (5, (N'17:00:00'  ), (N'19:00:00'  ))
INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (6, (N'19:30:00' ), (N'21:30:00'  ))
INSERT [dbo].[SUATCHIEU] ([MASUAT], [GIOBATDAU], [GIOKETTHUC]) VALUES (7, (N'22:00:00'  ), (N'00:00:00'  ))
SET IDENTITY_INSERT [dbo].[SUATCHIEU] OFF
ALTER TABLE [dbo].[LICHCHIEU]  WITH CHECK ADD FOREIGN KEY([MAPHIM])
REFERENCES [dbo].[PHIM] ([MAPHIM])
GO
ALTER TABLE [dbo].[LICHCHIEU]  WITH CHECK ADD FOREIGN KEY([MARAP])
REFERENCES [dbo].[RAP] ([MARAP])
GO
ALTER TABLE [dbo].[LICHCHIEU]  WITH CHECK ADD FOREIGN KEY([MASUAT])
REFERENCES [dbo].[SUATCHIEU] ([MASUAT])
GO
ALTER TABLE [dbo].[QUANLYVE]  WITH CHECK ADD FOREIGN KEY([MARAP], [MASUAT])
REFERENCES [dbo].[LICHCHIEU] ([MARAP], [MASUAT])
GO
ALTER TABLE [dbo].[QUANLYVE]  WITH CHECK ADD FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
