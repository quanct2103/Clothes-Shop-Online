USE [master]
GO
/****** Object:  Database [QuanLyBanQuanAo]    ******/
CREATE DATABASE [QuanLyBanQuanAo]
 USE [QuanLyBanQuanAo]
/****** Object:  Table [dbo].[Account]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [nchar](10) NULL,
	[pass] [nchar](10) NULL,
	[isSell] [bit] NULL,
	[isAdmin] [bit] NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[accountID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[amount] [int] NULL,
	[maCart] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[maCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoai](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanLoai] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[bid] [int] NOT NULL,
	[bname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[tongGia] [float] NULL,
	[ngayXuat] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [nvarchar](500) NULL,
	[price] [float] NULL,
	[quantity] [int] NOT NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NOT NULL,
	[branID] [int] NOT NULL,
	[sell_ID] [int] NOT NULL,
	[model] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[delivery] [nvarchar](50) NULL,
	[image2] [nvarchar](500) NULL,
	[image3] [nvarchar](500) NULL,
	[image4] [nvarchar](500) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanXet](
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[contentReview] [nvarchar](500) NULL,
	[dateReview] [date] NULL,
	[maReview] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_NhanXet] PRIMARY KEY CLUSTERED 
(
	[maReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoLuongDaBan]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongBan](
	[productID] [int] NULL,
	[soLuongDaBan] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TongChiTieuBanHang]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TongChiTieu](
	[userID] [int] NULL,
	[TongChiTieu] [float] NULL,
	[TongBanHang] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[invoiceID] [int] NULL,
	[productID] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NOT NULL,

) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfoLine]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoLine](
	[invoiceID] [int] NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[phonenumber] [nchar](10) NULL,

) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1, N'sa', N'123', 1, 1, N'quanct@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (2, N'johnsmith', N'453219', 0, 0, N'john.smith@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (3, N'janedoe', N'876534', 1, 0, N'jane.doe@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (4, N'sakura', N'987654', 1, 0, N'sakura@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (5, N'alice', N'234567', 0, 0, N'alice@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (6, N'bob', N'765432', 1, 0, N'bob@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (7, N'charlie', N'345678', 0, 0, N'charlie@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (8, N'david', N'654321', 1, 0, N'david@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (9, N'edward', N'567890', 0, 0, N'edward@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (10, N'frank', N'098765', 1, 0, N'frank@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (11, N'grace', N'321098', 0, 0, N'grace@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (12, N'harry', N'901234', 1, 0, N'harry@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (13, N'irene', N'789012', 0, 0, N'irene@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (14, N'jason', N'210987', 1, 0, N'jason@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (15, N'karen', N'432109', 0, 0, N'karen@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (16, N'lucas', N'678901', 1, 0, N'lucas@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (17, N'mary', N'543210', 0, 0, N'mary@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (18, N'nathan', N'890123', 1, 0, N'nathan@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (19, N'olivia', N'456789', 0, 0, N'olivia@gmail.com')
INSERT [dbo].[TaiKhoan] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (20, N'peter', N'765431', 1, 0, N'peter@gmail.com')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO

INSERT [dbo].[Brand] ([bid], [bname]) VALUES (1, N'Uniqlo')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (2, N'Zara')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (3, N'Adidas')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (4, N'Boo')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (5, N'Owl')
GO

INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (1, N'Shirts')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (2, N'Hoddies&Sweater')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (3, N'Jeans')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (4, N'Pants')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (5, N'Outerwears')
GO

SET IDENTITY_INSERT [dbo].[HoaDon] ON 
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (1, 1, 391000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (2, 2, 1370000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (3, 4, 2352000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (4, 6, 2279000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (5, 7, 2417000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (6, 5, 5782000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (7, 7, 4307000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (8, 3, 1471000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (9, 2, 4148000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (10, 1, 2879000, CAST(N'2023-09-29T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO

INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (1, N'Chu Thiên Quân', N'quanct@gmail.com', N'Số nhà 16, Đường Trung Tựu, Tây Tựu, Bắc Từ Liêm, Hà Nội', N'0328015134')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (2, N'johnsmith', N'john.smith@gmail.com', N'123 Đường Hoàng Văn Thụ, Quận 1, Thành phố Hồ Chí Minh', N'0987654321')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (3, N'sakura', N'sakura@gmail.com', N'789 Đường Nguyễn Văn Linh, Quận 5, Thành phố Đà Nẵng', N'0123456789')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (4, N'bob', N'bob@gmail.com', N'Tây Tựu, Bắc Từ Liêm, Hà Nội', N'0909090909')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (5, N'charlie', N'charlie@gmail.com', N'101 Đường Nguyễn Thị Minh Khai, Quận 7, Thành phố Hải Phòng', N'0888888888')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (6, N'alice', N'alice@gmail.com', N'505 Đường Phạm Ngũ Lão, Quận 6, Thành phố Long Xuyên', N'0765432109')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (7, N'charlie', N'charlie@gmail.com', N'101 Đường Nguyễn Thị Minh Khai, Quận 7, Thành phố Hải Phòng', N'0890123456')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (8, N'janedoe', N'jane.doe@gmail.com', N'303 Đường Hoàng Diệu, Quận 4, Thành phố Nha Trang', N'0777777777')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (9, N'johnsmith', N'john.smith@gmail.com', N'123 Đường Hoàng Văn Thụ, Quận 1, Thành phố Hồ Chí Minh', N'0666666666')
INSERT [dbo].[InfoLine] ([invoiceID], [name], [email], [address],[phonenumber]) VALUES (10, N'Chu Thiên Quân', N'quanct@gmail.com', N'Số nhà 16, Đường Trung Tựu, Tây Tựu, Bắc Từ Liêm, Hà Nội', N'0555555555')
GO

INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (1, 1, 391000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (2, 2, 391000, 2)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (2, 3, 588000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (3, 4, 784000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (3, 5, 784000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (3, 6, 784000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (4, 7, 980000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (4, 12, 1299000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (5, 26, 849000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (5, 3, 588000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (5, 7, 980000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (6, 1, 391000, 2)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (6, 21, 2800000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (6, 22, 2200000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (7, 27, 391000, 3)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (7, 2, 391000, 2)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (7, 4, 784000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (7, 8, 784000, 2)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (8, 9, 1471000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (9, 21, 2800000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (9, 24, 899000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (9, 30, 449000, 2)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (10, 32, 500000, 2)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (10, 33, 580000, 1)
INSERT [dbo].[OrderLine] ([invoiceID], [productID], [price], [quantity]) VALUES (10, 15, 1299000, 1)
GO

SET IDENTITY_INSERT [dbo].[SanPham] ON 
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (1, N'Áo thun Uniqlo 1', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/455365/item/vngoods_55_455365.jpg', 391000, 100, N'Áo Thun Supima Cotton Cổ Tròn Ngắn Tay',  N'Áo thun SUPIMA® cotton 100% cao cấp của chúng tôi, đã được cập nhật thành loại vải bền hơn. Đã cập nhật lên một loại vải quan trọng hơn với lớp hoàn thiện cao cấp. Cotton SUPIMA® 100% mịn, chống vón. Phong cách thiết kế cơ bản mặc riêng hoặc xếp lớp. Tỉ mỉ đến từng chi tiết như độ rộng cổ áo, đường chỉ may.', 1, 1, 1, N'U1', N'Green', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/455365/sub/vngoods_455365_sub7.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455365/sub/goods_455365_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455365/sub/goods_455365_sub17.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (2, N'Áo thun Uniqlo 2', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/455414/item/vngoods_44_455414.jpg', 391000, 100, N'Áo Thun Dáng Rộng Kẻ Sọc Tay Lỡ', N'Chất liệu áo thun 100% cotton bền đẹp. Thiết kế đẹp mắt, cảm giác mượt mà. Giữ nguyên dáng áo sau khi giặt. Đã qua quy trình pre-washed để có kết cấu đặc biệt. Một chiếc áo thun oversized với tay áo dài đến một nửa. Sọc rộng 2 tông màu cơ bản.', 1, 1, 3, N'U2', N'Yellow', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/455414/sub/vngoods_455414_sub7.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455414/sub/goods_455414_sub17.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455414/sub/goods_455414_sub18.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (3, N'Áo sơ mi Uniqlo 1', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/462384/item/vngoods_67_462384.jpg', 588000, 100, N'Áo Sơ Mi Extra Fine Cotton Dài Tay', N'Được làm bằng 100% cotton siêu dài. Chất vải mềm mịn, có độ bóng sang trọng. Được giặt và hoàn thiện đặc biệt để đạt được cảm giác cao cấp, giản dị. Vải đã được hoàn thiện đặc biệt để tăng độ mềm mại. Sản phẩm được giặt sạch để tạo cảm giác mềm mại, cao cấp nhưng vẫn giữ được nét giản dị. Kiểu dáng vừa vặn, rộng rãi giúp bạn dễ dàng chuyển động. Thiết kế tay và ngực kiểu dáng đẹp mắt. Đường cắt thân áo không đối xứng cho phép cử động dễ dàng ở cánh tay. Kết cấu nhăn hoàn hảo ở túi trước và đường may bên. Bề mặt có kết cấu đơn giản. Cổ áo cài khuy dễ dàng mặc mặc vào hoặc cởi ra. Hoàn hảo để mặc riêng hoặc bạn có thể mặc như một lớp áo khoác nhẹ bên ngoài.', 1, 1, 4, N'U3', N'Blue', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/462384/sub/vngoods_462384_sub7.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/462384/sub/goods_462384_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/462384/sub/goods_462384_sub17.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (4, N'Áo sơ mi Uniqlo 2', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/462307/item/goods_69_462307.jpg', 784000, 100, N'Áo Sơ Mi Dễ Chăm Sóc Kẻ Caro Co Giãn Dáng Slim Fit Dài Tay', N'Cải tiến độ xử lý giúp giữ hình dạng để chăm sóc dễ dàng. Vải được bảo quản lạnh cho đến khi may để đảm bảo tính chất giữ dáng. Được làm từ vải co giãn để tăng thêm sự thoải mái. Chống nhăn. Giũ nhẹ sản phẩm sau khi giặt. Định hình sản phẩm trước khi phơi khô. Chiều rộng và hình dạng cổ tay áo được cải tiến để trông thanh lịch hơn. Trông tuyệt vời khi có hoặc không có cà vạt. Đường viền cổ áo được cập nhật giúp cổ áo đứng ngay ngắn. Vai được thiết kế để cử động cánh tay dễ dàng. Đường cắt mảnh tôn lên độ xếp nếp trang nhã của vải. Túi có kích thước tiện lợi có thể đựng chứng minh thư hoặc hộ chiếu. Chiếc áo sơ mi hoàn hảo cho mọi dịp.', 1, 1, 6, N'U4', N'Blue', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/462307/sub/goods_462307_sub17.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/462307/sub/goods_462307_sub19.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/462307/sub/goods_462307_sub22.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (5, N'Áo Hoddies&Sweater Uniqlo 1', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/464509/item/vngoods_03_464509.jpg', 784000, 100, N'PEANUTS Áo Nỉ Dài Tay', N'PEANUTS Đội Bóng Chày của Charlie Brown. Những thiết kế lấy cảm hứng từ hình ảnh Snoopy và những người bạn đang chơi bóng chày trong bộ truyện tranh Peanuts nổi tiếng. Bộ sưu tập khắc họa những hình ảnh quen thuộc của Snoopy và những người bạn, gồm có cả Charlie Brown, quản lý đội bóng kiêm vị trí ném bóng, với niềm đam mê dành cho bóng chày.', 2, 1, 8, N'U5', N'Gray', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/464509/sub/vngoods_464509_sub7.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464509/sub/goods_464509_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464509/sub/goods_464509_sub17.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (6, N'Áo Hoddies&Sweater Uniqlo 2', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/444967/item/vngoods_05_444967.jpg', 784000, 100, N'Áo Nỉ Có Mũ Chui Đầu', N'Đáp lại phản hồi của khách hàng, chúng tôi đã cập nhật vải để giảm độ vón cục và sờn rách. Chất vải nỉ với kết cấu đẹp cùng nét thanh lịch. Mềm và mịn. Thiết kế đường viền ở phần mũ trùm đầu. Túi bên hông với thiết kế đẹp mắt. Kiểu dáng cổ điển của dây rút thêm phần bắt mắt.', 2, 1, 10, N'U6', N'Gray', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/444967/sub/goods_444967_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/444967/sub/goods_444967_sub17.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/444967/sub/goods_444967_sub18.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (7, N'Quần Jeans Uniqlo 1', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/459690/item/vngoods_64_459690.jpg', 980000, 100, N'Quần Jeans Ống Rộng', N'Dáng suông rộng, phom suông dễ mặc, độ rộng vừa phải. Được làm bằng vải denim cotton, đồng phát triển với Kaihara. Đường may xắn gấu theo phong cách Work-wear và thiết kết túi trước đặt trên đường chéo. Công nghệ BLUE CYCLE JEANS giúp giảm lượng nước sử dụng trong quá trình sản xuất. Mức độ tiết kiệm nước sẽ có sự chênh lệch giữa các sản phẩm. Lên đến 99%. Dữ liệu dựa trên sự so sánh giữa Quần Jeans Nam Regular Fit năm 2017 và năm 2018 với công nghệ do Trung Tâm Cải Tiến Quần Jeans của UNIQLO phát triển vào năm 2018.', 3, 1, 12, N'U7', N'Blue', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/459690/sub/goods_459690_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/459690/sub/goods_459690_sub17.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/459690/sub/goods_459690_sub23.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (8, N'Quần Pants Uniqlo 2', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/452112/sub/vngoods_452112_sub7.jpg', 784000, 100, N'Quần Smart Pants Dài Đến Mắt Cá (Vải Cotton)', N'Chất thun co giãn 2 chiều thoải mái. Vải twill cotton được làm từ sợi mịn. Quần ôm vừa vặn với đường cắt thon gọn đẹp mắt, dài đến mắt cá chân. Đường may túi hai bên. Lưng thun co giãn thoải mái mang lại vẻ cổ điển khi kết hợp cùng các loại áo. Thích hợp cho phong cách giản dị hoặc thanh lịch.', 4, 1, 14, N'U8', N'Beige', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452112/sub/goods_452112_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452112/sub/goods_452112_sub17.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452112/sub/goods_452112_sub18.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (9, N'Outerwears Uniqlo 1', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/459591001/item/vngoods_37_459591001.jpg', 1471000, 100, N'Áo Khoác Kiểu Sơ Mi Dáng Rộng', N'Vải nhẹ, mềm và không gây ngứa cho bạn cảm giác ấm áp. Kiểu dáng thoải mái với vai rũ. Dễ dàng mặc vào để có vẻ ngoài thoải mái. Áo khoác sơ mi có viền cong, cổ đứng. Một túi vá và một túi bên trong ở ngực trái, và 2 túi có đường may bên hông mang lại vẻ ngoài đơn giản với nhiều khả năng chứa đựng những vật dụng nhỏ. Chúng tôi hướng đến góp phần giảm thiểu chất thải và tiêu thụ dầu. Trang phục được làm bằng chất liệu polyester tái chế là một phần của nỗ lực này. Tỷ lệ chất liệu polyester tái chế được sử dụng là khác nhau tùy theo từng sản phẩm.', 5, 1, 16, N'U9', N'Brown', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/459591001/sub/goods_459591001_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/459591001/sub/goods_459591001_sub17.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/459591001/sub/goods_459591001_sub21.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (10, N'Outerwears Uniqlo 2', N'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/449725/item/vngoods_02_449725.jpg', 2944000, 100, N'Áo Parka Seamless Down (3D Cut)', N'Màu 09 Đen được cải tiến với loại vải chống bám bụi tốt hơn. Quần jeans co giãn nhất từ trước đến nay của UNIQLO, được làm bằng chất liệu vải Siêu Co Giãn. Kết hợp sự thoải mái đáng kinh ngạc và kiểu dáng denim cổ điển. Ống ôm dần, ôm vừa vặn cộng với độ co giãn tuyệt vời cho phong cách thêm nổi bật. Vị trí túi sau cao giúp tạo hiệu ứng tôn dáng. Đường khâu với màu sắc tinh tế và nút cài mờ mang đến vẻ ngoài tinh tế. Lớp bề mặt hoàn thiện có đường vân cổ điển được phát triển tại Trung Tâm Jeans Innovation của chúng tôi. Chúng tôi đã điều chỉnh độ dày của sợi vải, số lượng chỉ và quá trình xử lý để đạt được độ hoàn thiện tốt hơn nữa. Các đường may bên hông làm bằng chỉ mềm tạo cảm giác tuyệt vời khi tiếp xúc với da. Dáng ôm rất phù hợp kết hợp với các trang phục thường ngày hoặc trang trọng hơn tùy thuộc vào kiểu dáng.', 5, 1, 18, N'U10', N'Grey', N'Hà Nội', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/449725/sub/goods_449725_sub11.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/449725/sub/goods_449725_sub14.jpg', N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/449725/sub/goods_449725_sub18.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (11, N'Áo thun Zara', N'https://static.zara.net/photos///2023/I/0/2/p/1165/321/710/2/w/750/1165321710_1_1_1.jpg?ts=1695809729426', 799000, 100, N'ÁO PHÔNG HỌA TIẾT CHỮ', N'Áo phông dáng rộng, cổ tròn, cộc tay. In họa tiết chữ khác màu phía trước và sau lưng.', 1, 2, 20, N'Z1', N'White', N'Hà Nội', N'https://static.zara.net/photos///2023/I/0/2/p/1165/321/710/2/w/750/1165321710_2_1_1.jpg?ts=1695809730085', N'https://static.zara.net/photos///2023/I/0/2/p/1165/321/710/2/w/750/1165321710_2_2_1.jpg?ts=1695809729855', N'https://static.zara.net/photos///2023/I/0/2/p/1165/321/710/2/w/750/1165321710_6_2_1.jpg?ts=1695712740837')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (12, N'Áo sơ mi Zara', N'https://static.zara.net/photos///2023/I/0/2/p/6579/764/250/532/w/750/6579764250_1_1_1.jpg?ts=1695814965093', 1299000, 100, N'ÁO SƠ MI HỌA TIẾT CHỮ', N'Áo sơ mi vải cotton, dáng relaxed fit. Cổ ve lật trải rộng, dài tay, cổ tay bo và cài khuy. In họa tiết và chữ và hình khối khác màu ở phía trước và sau lưng. Cài phía trước bằng hàng khuy cài.', 1, 2, 1, N'Z2', N'White', N'Hà Nội', N'https://static.zara.net/photos///2023/I/0/2/p/6579/764/250/532/w/750/6579764250_2_1_1.jpg?ts=1695814966283', N'https://static.zara.net/photos///2023/I/0/2/p/6579/764/250/532/w/750/6579764250_2_2_1.jpg?ts=1695814966750', N'https://static.zara.net/photos///2023/I/0/2/p/6579/764/250/2/w/750/6579764250_6_1_1.jpg?ts=1695712849178')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (13, N'Hoddies&Sweater Zara', N'https://static.zara.net/photos///2023/I/0/2/p/4090/300/401/2/w/750/4090300401_1_1_1.jpg?ts=1689004256286', 629000, 100, N'ÁO POLO DỆT KIM CỔ XẺ', N'Áo polo dệt kim pha sợi viscose. Cổ ve lật, xẻ trước ngực. Dài tay.', 2, 2, 3, N'Z3', N'Blue', N'Hà Nội', N'https://static.zara.net/photos///2023/I/0/2/p/4090/300/401/2/w/750/4090300401_2_1_1.jpg?ts=1689004257409', N'https://static.zara.net/photos///2023/I/0/2/p/4090/300/401/2/w/750/4090300401_2_2_1.jpg?ts=1689004255922', N'https://static.zara.net/photos///2023/I/0/2/p/4090/300/401/2/w/750/4090300401_6_1_1.jpg?ts=1688541468303')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (14, N'Quần Jeans Zara', N'https://static.zara.net/photos///2023/I/0/2/p/8062/303/800/2/w/750/8062303800_1_1_1.jpg?ts=1689608345789', 1299000, 100, N'QUẦN JEANS DÁNG STRAIGHT FIT', N'Quần jeans dáng straight fit. Có 5 túi. Kiểu bạc màu. Cài phía trước bằng khuy cài.', 3, 2, 4, N'Z4', N'Black', N'Hà Nội', N'https://static.zara.net/photos///2023/I/0/2/p/8062/303/800/2/w/750/8062303800_2_1_1.jpg?ts=1689608344854', N'https://static.zara.net/photos///2023/I/0/2/p/8062/303/800/2/w/750/8062303800_2_2_1.jpg?ts=1689608344855', N'https://static.zara.net/photos///2023/I/0/2/p/8062/405/800/2/w/750/8062405800_6_1_1.jpg?ts=1688122815876')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (15, N'Quần Pants Zara', N'https://static.zara.net/photos///2023/I/0/2/p/0706/215/400/2/w/750/0706215400_1_1_1.jpg?ts=1692959815703', 1299000, 100, N'QUẦN VẢI DỆT THIẾT KẾ THOẢI MÁI', N'Quần dáng slim fit, chất liệu vải co giãn hai chiều. Có hai túi phía trước và hai túi may viền cài khuy phía sau. Cài phía trước bằng khóa kéo và khuy.', 4, 2, 6, N'Z5', N'Blue', N'Hà Nội', N'https://static.zara.net/photos///2023/I/0/2/p/0706/215/400/2/w/750/0706215400_2_1_1.jpg?ts=1692959818088', N'https://static.zara.net/photos///2023/I/0/2/p/0706/215/400/2/w/750/0706215400_2_2_1.jpg?ts=1692959816952', N'https://static.zara.net/photos///2023/I/0/2/p/0706/251/400/2/w/750/0706251400_6_1_1.jpg?ts=1692269630235')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (16, N'Outerwears Zara', N'https://static.zara.net/photos///2023/I/0/2/p/4938/306/800/532/w/750/4938306800_1_1_1.jpg?ts=1695814962887', 1699000, 100, N'ÁO CARDIGAN CHẦN CHỈ NỔI', N'Áo cardigan len cotton. Cổ chữ V, dài tay. Có túi đáp hai bên hông. Chần chỉ nổi khác màu. Bo viền bằng len gân. Cài phía trước bằng hàng khuy cài.', 5, 2, 8, N'Z6', N'Black', N'Hà Nội', N'https://static.zara.net/photos///2023/I/0/2/p/4938/306/800/532/w/750/4938306800_2_1_1.jpg?ts=1695814965195', N'https://static.zara.net/photos///2023/I/0/2/p/4938/306/800/532/w/750/4938306800_2_2_1.jpg?ts=1695814965016', N'https://static.zara.net/photos///2023/I/0/2/p/4938/306/800/2/w/750/4938306800_6_1_1.jpg?ts=1693294524423')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (17, N'Áo thun Adidas', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/bebb883c77bc49d7824eaf4a009851d8_9366/Ao_Thun_Tap_Luyen_Train_Essentials_DJen_IC7428_21_model.jpg', 650000, 100, N'ÁO THUN TẬP LUYỆN TRAIN ESSENTIALS', N'Khai phá phiên bản tốt hơn của bạn. Hãy tập luyện theo bất kỳ cách bạn muốn với chiếc áo thun adidas hỗ trợ vận động này. Bạn sẽ cảm thấy thoải mái nhờ công nghệ AEROREADY kiểm soát ẩm khi buổi tập tăng nhiệt. Thiết kế áo cho phạm vi chuyển động tối đa, vậy nên hãy tự tin nâng tạ qua đầu thêm một lần nữa. Làm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, 3, 10, N'A1', N'Black', N'Hà Nội', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/60bc131c236849afb230af4a00985aaa_9366/Ao_Thun_Tap_Luyen_Train_Essentials_DJen_IC7428_23_hover_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0d6fd4013a864e559e6aaf4a009864f8_9366/Ao_Thun_Tap_Luyen_Train_Essentials_DJen_IC7428_25_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/bb8c8aed3fac4f79a0b3af4a00989270_9366/Ao_Thun_Tap_Luyen_Train_Essentials_DJen_IC7428_01_laydown.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (18, N'Áo Polo Adidas', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3f073b5fa00f43e8a589af9e0161d63b_9366/Ao_Polo_Phu_Hoa_Tiet_Core_Mau_xanh_da_troi_IB2604_21_model.jpg', 1500000, 100, N'ÁO POLO PHỦ HỌA TIẾT CORE', N'Từ fairway tới clubhouse, chiếc áo polo golf adidas này giúp bạn luôn có được diện mạo chỉn chu. Họa tiết Logo 3 Bar phủ toàn bộ nâng tầm outfit đồng thời thể hiện tình yêu thể thao trong bạn. Chất vải piqué mềm mại, co giãn đảm bảo khả năng cử động thoải mái cả trong và ngoài sân. Làm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 1, 3, 12, N'A2', N'Blue', N'Hà Nội', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/072ac2e480804855a530af9e01620f52_9366/Ao_Polo_Phu_Hoa_Tiet_Core_Mau_xanh_da_troi_IB2604_23_hover_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/59328b917cbb45ff9545af9e0163099c_9366/Ao_Polo_Phu_Hoa_Tiet_Core_Mau_xanh_da_troi_IB2604_25_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ef508fb36caa469e8259af73001c935e_9366/Ao_Polo_Phu_Hoa_Tiet_Core_Mau_xanh_da_troi_IB2604_01_laydown.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (19, N'Outerwears Adidas', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/1f2f26965b1d4571bb94d8d0692a6b45_9366/Ao_Track_Jacket_Co_Mu_Khoa_Keo_Doc_Than_Premium_Z.N.E._mau_xanh_la_IN5090_21_model.jpg', 2500000, 100, N'ÁO TRACK JACKET CÓ MŨ KHÓA KÉO DỌC THÂN PREMIUM', N'Giữa guồng quay tất bật là giây phút nghỉ ngơi. Đó là lúc để tâm trí bạn thả lỏng và phục hồi thế cân bằng. Chiếc áo hoodie khóa kéo dọc thân adidas này sẽ giúp bạn đạt đến trạng thái ấy. Chất liệu co giãn bốn chiều cao cấp mang lại cảm giác thoải mái tối ưu, cùng công nghệ AEROREADY thấm hút ẩm đảm bảo cho bạn luôn khô ráo. Logo Z.N.E. sau lưng hoàn thiện thiết kế. Giờ thì hãy đeo tai nghe và tận hưởng khoảnh khắc thật Zen. Sản phẩm này có chứa tối thiểu 70% hỗn hợp các chất liệu tái chế và có thể tái tạo.', 5, 3, 14, N'A3', N'Brown', N'Hà Nội', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/32004cb949a64398a2247907fb9413b4_9366/Ao_Track_Jacket_Co_Mu_Khoa_Keo_Doc_Than_Premium_Z.N.E._mau_xanh_la_IN5090_23_hover_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/4bf8bb8b32aa415e89f01145c3e57a57_9366/Ao_Track_Jacket_Co_Mu_Khoa_Keo_Doc_Than_Premium_Z.N.E._mau_xanh_la_IN5090_25_model.jpg', N'https://assets.adidas.com/images/c_crop,f_auto,fl_lossy,g_north,h_840,q_auto,y_40/h_840/9175141dc598464da7e7eb7f0fd91df6_9366/Ao_Track_Jacket_Co_Mu_Khoa_Keo_Doc_Than_Premium_Z.N.E._mau_xanh_la_IN5090_01_laydown.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (20, N'Quần Jeans Adidas', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/70b17658f1be473299ecafd000d0f03e_9366/Quan_Tui_Hop_3_Soc_Classics_Adicolor_Be_IM2108_21_model.jpg', 2500000, 100, N'QUẦN TÚI HỘP 3 SỌC CLASSICS ADICOLOR', N'Thời trang kết hợp công năng tạo nên chiếc quần túi hộp adidas này. Phong cách kinh điển nay được cải biên với chất vải ripstop và các túi quần thông minh hoàn hảo để đựng đồ. Hãy kết hợp cùng chiếc áo thun hoặc áo khoác ưa thích rồi lên đường. Từ kiểm tra email tới lên đường di chuyển, bạn sẽ luôn sẵn sàng. Các chi tiết tùy chỉnh ở mọi vị trí đảm bảo độ vừa vặn hoàn hảo. Làm từ 100% chất liệu tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa', 3, 3, 16, N'A4', N'Beige', N'Hà Nội', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/29d7407eb1a5427d9456afd000d0f82a_9366/Quan_Tui_Hop_3_Soc_Classics_Adicolor_Be_IM2108_23_hover_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6d4151ee863f4b17b6eaafd000d10227_9366/Quan_Tui_Hop_3_Soc_Classics_Adicolor_Be_IM2108_25_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/cdd6af4f600c4c179b7bafd000d1270c_9366/Quan_Tui_Hop_3_Soc_Classics_Adicolor_Be_IM2108_01_laydown.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (21, N'Quần Pants Adidas', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9575534f2f98480f9ce1afa3000ac578_9366/Quan_Ultimate365_Tour_Extreme_Heat_Ngoc_lam_IB2595_21_model.jpg', 2800000, 100, N'QUẦN ULTIMATE365 TOUR EXTREME HEAT', N'Khi nhiệt độ tăng cao trên sân, hãy duy trì cảm giác thoải mái với chiếc quần golf adidas này. Kiểu dáng ôm và ống côn mang lại cảm giác nhẹ nhàng, hoàn hảo cho những ngày nóng bức trên sân. Phong cách classic cho vẻ ngoài chỉn chu từ cú tee đầu tiên cho tới cú putt sau cùng. Các túi trước và sau đựng các vật dụng thiết yếu để bạn có thể chơi golf không chút phân tâm.', 4, 3, 18, N'A5', N'Blue', N'Hà Nội', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/62963ba12f8144b1a929afa3000afc22_9366/Quan_Ultimate365_Tour_Extreme_Heat_Ngoc_lam_IB2595_23_hover_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/d392c4270c2c440a9c18afa3000c38f4_9366/Quan_Ultimate365_Tour_Extreme_Heat_Ngoc_lam_IB2595_25_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0e61dc7ee2954f27a3a3af9d0154cae9_9366/Quan_Ultimate365_Tour_Extreme_Heat_Ngoc_lam_IB2595_01_laydown.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (22, N'Hoddies&Sweater Adidas', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/cae550305beb43f0ab8dae5300f10b96_9366/Ao_Hoodie_Neuclassics_Adicolor_Be_HM1870_21_model.jpg', 2200000, 100, N'ÁO HOODIE NEUCLASSICS ADICOLOR', N'Bạn đang muốn bổ sung thêm item mới vào bộ sưu tập Adicolor của mình? Chính là chiếc áo hoodie adidas này. Vị trí của biểu tượng 3 Sọc sẽ khiến bạn phải bất ngờ — chúng được quấn quanh một bên tay áo, tạo điểm nhất hiện đại trên phong cách truyền thống. Còn chất vải cotton mềm mại? Nghĩa là nay lại càng thoải mái và dễ chịu hơn.Sản phẩm này có sử dụng thành phần tái chế từ rác thải sản xuất, chẳng hạn như vật liệu cắt bỏ, cũng như rác thải sinh hoạt sau tiêu dùng, nhằm giảm thiểu tác động môi trường do sử dụng thành phần nguyên sinh trong sản xuất.', 2, 3, 20, N'A6', N'White', N'Hà Nội', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/80ac16379cfa4022af7fae5300f113f5_9366/Ao_Hoodie_Neuclassics_Adicolor_Be_HM1870_23_hover_model.jpg', N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/4faa3155189840a8b4c2ae5300f11ca8_9366/Ao_Hoodie_Neuclassics_Adicolor_Be_HM1870_25_model.jpg', N'https://assets.adidas.com/images/c_crop,f_auto,fl_lossy,g_north,h_840,q_auto,y_40/h_840/42c9da90babe47a6ba52ae5300f14c14_9366/Ao_Hoodie_Neuclassics_Adicolor_Be_HM1870_01_laydown.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (23, N'Áo thun Boo', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.02.3.22.002.223.23-11000032-bst-1_5.jpg', 488000, 100, N'ÁO PHÔNG UN REGULAR BART EMOJI THE SIMPSON', N'Chất liệu: 100% Cotton thoáng mát, dễ chịu, thấm hút mồ hôi tốt. Thoải mái khi vận động trong thời tiết nóng. Form dáng: "Regular là dáng áo tiêu chuẩn phù hợp hầu hết mọi người. Dáng áo này không ôm sát người mà có độ bó nhẹ ở phần eo và tay áo. Đây chính là form áo dành cho những bạn không thích mặc quá rộng "', 1, 4, 1, N'B1', N'Yellow', N'Hà Nội', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.02.3.22.002.223.23-11000032n-1_4.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.02.3.22.002.223.23-11000032-n-1.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.02.3.22.002.223.23-11000032-n-2.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (24, N'Áo sơ mi Boo', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.17.3.02.003.222.23-50600031-bst-1.jpg', 899000, 100, N'ÁO SƠ MI UN OVERSHIRT FLANNEL CARO', N'Sản phẩm độc đáo với sự pha trộn màu sắc đem lại sự nổi bật cho bạn. Họa tiết kẻ caro trẻ trung, cá tính. Áo Sơ Mi BOO nam dáng rộng dễ dàng mix match cùng với Áo Thun BOO, Quần Jean BOO BOO ,.... Mỗi cách phối đồ là đem tới cho bạn một phong cách mới. Chất vải dạ mềm đã được xử lý, không bai, không xù, không bám dính', 1, 4, 3, N'B2', N'Blue', N'Hà Nội', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.17.3.02.003.222.23-50600031-n-2.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.17.3.02.003.222.23-50600031-n-3.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.17.3.02.003.222.23-50600031-n-4.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (25, N'Hoddies&Sweater Boo', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.06.3.02.015.221.23-10200011-bst-1.jpg', 899000, 100, N'ÁO NỈ MŨ BART THE SIMPSONS BOOZILLA', N'ÁO NỈ MŨ BART THE SIMPSONS BOOZILLA', 2, 4, 4, N'B3', N'Black', N'Hà Nội', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.06.3.02.015.221.23-10200011-n-2.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.06.3.02.015.221.23-10200011-n-3.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.0.06.3.02.015.221.23-10200011-n-4.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (26, N'Quần Jeans Boo', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.21.2.18.006.222.23-60600034-bst-1.jpg', 849000, 100, N'QUẦN JEANS NAM STRAIGHT NAM BOOLAAB', N'Chất liệu: "Vải Jean dày dặn, có độ đứng form tôn dáng khi mặc. Sản phẩm có độ bền cao, không phai màu khi giặt giũ". Form dáng: "Dáng quần Straight suông thoải mái, che được nhiều khuyết điểm. Đây là form quần có tỷ lệ mông, đùi và ống quần không chênh lệch nhau quá nhiều tạo thành dáng suông từ trên xuống dưới"', 3, 4, 6, N'B4', N'Blue', N'Hà Nội', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.21.2.18.006.222.23-60600034-n-2.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.21.2.18.006.222.23-60600034-bst-1.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.21.2.18.006.222.23-60600034-n-2.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (27, N'Quần Pants Boo', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.22.3.06.003.123.23-10200011-bst-1.jpg', 391000, 100, N'QUẦN KHAKI JOGGER UN CÚC GẤU LOGO ESSENTIALS 03', N'QUẦN KHAKI JOGGER UN CÚC GẤU LOGO ESSENTIALS 03', 4, 4, 8, N'B5', N'Black', N'Hà Nội', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.22.3.06.003.123.23-10200011-bst-1.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.22.3.06.003.123.23-10200011-bst-1.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.22.3.06.003.123.23-10200011-bst-1.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (28, N'Outerwears Boo', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.08.3.18.006.220.23-11300011-bst-1.jpg', 2699000, 100, N'ÁO KHOÁC LÔNG CÙN BOOLAAB', N'ÁO KHOÁC LÔNG CÙN BOOLAAB', 5, 4, 10, N'B6', N'Brown', N'Hà Nội', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.08.3.18.006.220.23-11300011-n-2.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.08.3.18.006.220.23-11300011-n-3.jpg', N'https://cdn.boo.vn/media/catalog/product/1/_/1.2.08.3.18.006.220.23-11300011-n-5.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (29, N'Áo thun Owl', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-PHONG-HOA-TIET-OWL-CROISSANT-TEE-4-2.jpg', 380000, 100, N'OWL. CROISSANT TEE', N'ÁO THUN KHÔNG CỔ NGẮN TAY; FORM REGULAR-FIT; ĐIỂM NHẤN PHÍA TRƯỚC NGỰC ÁO VÀ PHÍA SAU ÁO CÓ HỌA TIẾT ĐƯỢC KẾT HỢP IN KĨ THUẬT MỚI HẠN CHẾ BONG TRÓC .', 1, 5, 12, N'O1', N'Green', N'Hà Nội', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-PHONG-HOA-TIET-OWL-CROISSANT-TEE-10.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-PHONG-HOA-TIET-OWL-CROISSANT-TEE-5-2.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-PHONG-HOA-TIET-OWL-CROISSANT-TEE-3-2.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (30, N'Áo sơ mi Owl', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-SO-MI-TAY-DAI-KE-SOC-OWL-LOGO-OXFORD-SHIRT-14.jpg', 449000, 100, N'OWL. OXFORD SHIRT 2.0', N'ÁO SƠMI TAY DÀI; FORM REGULAR-FIT; ĐƯỢC THÊM CHI TIẾT TÚI NGỰC TRÁI VÀ CÓ HÌNH THÊU LOGO OWL ; MỘT SẢN PHẨM ĐƠN GIẢN, ĐA DẠNG TRONG CÁCH PHỐI QUẦN ÁO', 1, 5, 14, N'O2', N'Blue', N'Hà Nội', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-SO-MI-TAY-DAI-KE-SOC-OWL-LOGO-OXFORD-SHIRT-13.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-SO-MI-TAY-DAI-KE-SOC-OWL-LOGO-OXFORD-SHIRT-9.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/07/AO-SO-MI-TAY-DAI-KE-SOC-OWL-LOGO-OXFORD-SHIRT-3.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (31, N'Hoddies&Sweater Owl', N'https://owlbrand.vn/wp-content/uploads/2023/01/AO-NI-OWL-MINI-TYPO-HOODIE-1.jpg', 499000, 100, N'OWL. MINI TYPO HOODIE', N'ÁO NỈ CÓ  MŨ; FORM REGULAR-FIT; GIỮA NGỰC ÁO CÓ HỌA TIẾT OWL THÊU VI TÍNH SẮC NÉT ; MỘT SẢN PHẨM ĐƠN GIẢN PHỐI KÈM NỔI BẬT.', 2, 5, 16, N'O3', N'Grey', N'Hà Nội', N'https://owlbrand.vn/wp-content/uploads/2023/01/DSC01342.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/01/AO-NI-OWL-MINI-TYPO-HOODIE-2.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/01/DSC01367.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (32, N'Quần Jeans Owl', N'https://owlbrand.vn/wp-content/uploads/2023/04/QUAN-BO-NAM-ONG-DUNG-OWL-BLANK-RELAX-JEANS-14.jpg', 500000, 100, N'OWL. BLANK RELAX JEANS', N'QUẦN DÀI CHẤT JEANS; FORM RELAX-FIT; SẢN PHẦN VỚI HAI TÚI MAY ĐẮP PHÍA SAU; SẢN PHẨM HƯỚNG ĐẾN SỰ ĐƠN GIẢN.', 3, 5, 18, N'O4', N'Blue', N'Hà Nội', N'https://owlbrand.vn/wp-content/uploads/2023/04/QUAN-BO-NAM-ONG-DUNG-OWL-BLANK-RELAX-JEANS-1-1.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/04/QUAN-BO-NAM-ONG-DUNG-OWL-BLANK-RELAX-JEANS-2-1.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/04/QUAN-BO-NAM-ONG-DUNG-OWL-BLANK-RELAX-JEANS-3-1.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (33, N'Quần Pants Owl', N'https://owlbrand.vn/wp-content/uploads/2023/06/QUAN-DAI-NAM-ONG-DUNG-OWL-KAKI-PANT-7-1.jpg', 580000, 100, N'OWL. KAKI PANT', N'QUẦN DÀI CHẤT VẢI KAKI; FORM RELAX-FIT; TÚI PHẢI PHÍA SAU CÓ HÌNH THÊU LOGO; PHÍA TRƯỚC CÓ PHẦN XẾP LI TĂNG SỰ THOẢI MÁI CHO NGƯỜI DÙNG.', 4, 5, 20, N'O5', N'Black', N'Hà Nội', N'https://owlbrand.vn/wp-content/uploads/2023/06/QUAN-DAI-NAM-ONG-DUNG-OWL-KAKI-PANT-7.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/06/QUAN-DAI-NAM-ONG-DUNG-OWL-KAKI-PANT-8-1.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/06/QUAN-DAI-NAM-ONG-DUNG-OWL-KAKI-PANT-9-1.jpg')
INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (34, N'Outerwears Owl', N'https://owlbrand.vn/wp-content/uploads/2023/08/AO-KHOAC-GIO-CHUI-DAU-OWL-HALF-ZIP-JACKET-3.jpg', 610000, 100, N'OWL. HALF-ZIP JACKET', N' ÁO KHOÁC CỔ CAO TAY DÀI; FORM REGULAR-FIT; GIỮA ÁO CÓ HỌA TIẾT IN VÀ THÊU CHẮC CHẮN, PHẦN VAI PHỐI MÀU TẠO ĐIỂM NHẤN, PHÍA TRONG ÁO ĐƯỢC THIẾT KẾ HỐC GIÓ VÀ ĐƯỢC LÓT LỚP LƯỚI KHOÁNG MÁT; XỬ LÝ BỀ MẶT NHĂN TẠO HIỆU ỨNG RETRO; HOÀN THIỆN CHỨC NĂNG CHỐNG THẤM TRƯỢT NƯỚC CÓ MẬT ĐỘ TIÊU CHUẨN.', 5, 5, 1, N'O6', N'Blue', N'Hà Nội', N'https://owlbrand.vn/wp-content/uploads/2023/08/AO-KHOAC-GIO-KHONG-MU-OWL-JACKET-HALFZIP-18.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/08/AO-KHOAC-GIO-CHUI-DAU-OWL-HALF-ZIP-JACKET-4.jpg', N'https://owlbrand.vn/wp-content/uploads/2023/08/AO-KHOAC-GIO-CHUI-DAU-OWL-HALF-ZIP-JACKET-5.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO

SET IDENTITY_INSERT [dbo].[NhanXet] ON 
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 1, N'sản phẩm này chất liệu rất tốt', CAST(N'2023-09-19' AS Date), 1)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (2, 2, N'xin chào', CAST(N'2023-09-24' AS Date), 2)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (3, 3, N'sản phẩm này rất đẹp', CAST(N'2023-08-25' AS Date), 3)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (4, 3, N'sản phẩm này màu rất đẹp', CAST(N'2023-03-26' AS Date), 4)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (5, 5, N'giao hàng rất nhanh', CAST(N'2023-10-01' AS Date), 5)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (6, 6, N'5 sao chất lượng', CAST(N'2023-09-02' AS Date), 6)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (7, 7, N'rất xứng đáng với giá tiền', CAST(N'2023-08-03' AS Date), 7)
INSERT [dbo].[NhanXet] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (8, 8, N'sản phẩm nên có trong tủ đồ', CAST(N'2023-07-14' AS Date), 8)
SET IDENTITY_INSERT [dbo].[NhanXet] OFF
GO
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (1, 23)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (2, 13)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (3, 21)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (4, 9)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (5, 7)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (7, 10)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (12, 2)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (15, 4)
INSERT [dbo].[SoLuongBan] ([productID], [soLuongDaBan]) VALUES (26, 2)
GO

INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1, 3270000, 2472000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (2, 5518000, 0)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (3, 1471000, 2463000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (4, 2352000, 1176000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (5, 5782000, 0)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (6, 2279000, 3716000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (7, 6724000, 0)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (8, 0, 1975000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (10, 0, 784000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (12, 0, 1960000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (14, 0, 2466000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (16, 0, 1741000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (18, 0, 6600000)
INSERT [dbo].[TongChiTieu] ([userID], [TongChiTieu], [TongBanHang]) VALUES (20, 0, 2780000)
GO

ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_TaiKhoan] FOREIGN KEY([accountID])
REFERENCES [dbo].[TaiKhoan] ([uID])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_TaiKhoan]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TaiKhoan] FOREIGN KEY([accountID])
REFERENCES [dbo].[TaiKhoan] ([uID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TaiKhoan] FOREIGN KEY([sell_ID])
REFERENCES [dbo].[TaiKhoan] ([uID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhanLoai] FOREIGN KEY([cateID])
REFERENCES [dbo].[PhanLoai] ([cid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhanLoai]
GO

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Brand] FOREIGN KEY([branID])
REFERENCES [dbo].[Brand] ([bid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Brand]
GO

ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_TaiKhoan] FOREIGN KEY([accountID])
REFERENCES [dbo].[TaiKhoan] ([uID])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_TaiKhoan]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_SanPham]
GO
ALTER TABLE [dbo].[SoLuongBan]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongBan_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[SoLuongBan] CHECK CONSTRAINT [FK_SoLuongBan_SanPham]
GO

ALTER TABLE [dbo].[TongChiTieu]  WITH CHECK ADD  CONSTRAINT [FK_TongChiTieu_TaiKhoan] FOREIGN KEY([userID])
REFERENCES [dbo].[TaiKhoan] ([uID])
GO
ALTER TABLE [dbo].[TongChiTieu] CHECK CONSTRAINT [FK_TongChiTieu_TaiKhoan]
GO

ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_HoaDon] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_HoaDon]
GO

ALTER TABLE [dbo].[InfoLine]  WITH CHECK ADD  CONSTRAINT [FK_InfoLine_HoaDon] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[InfoLine] CHECK CONSTRAINT [FK_InfoLine_HoaDon]
GO

ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[proc_CapNhatSoLuongDaBan]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatSoLuongDaBan] @productID int, @soLuongBanThem int
as
begin
	update SoLuongBan set soLuongDaBan=soLuongDaBan + @soLuongBanThem where [productID]=@productID
end
GO
/****** Object:  StoredProcedure [dbo].[proc_CapNhatTongBanHang]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongBanHang] @sell_ID int, @banHangThem float
as
begin
	update TongChiTieu set TongBanHang= TongBanHang + @banHangThem where [userID]=@sell_ID
end
GO
/****** Object:  StoredProcedure [dbo].[proc_CapNhatTongChiTieu]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongChiTieu] @userID int, @chiTieuThem float
as
begin
	update TongChiTieu set TongChiTieu= TongChiTieu + @chiTieuThem where [userID]=@userID
end
GO

