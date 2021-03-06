USE [shop]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 22/6/2020 10:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[ProId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 22/6/2020 10:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BuyDate] [date] NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nchar](10) NULL,
	[Address] [nvarchar](150) NULL,
	[Note] [nvarchar](150) NULL,
	[Payment] [nvarchar](100) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22/6/2020 10:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateId] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](64) NOT NULL,
	[CateImage] [nvarchar](64) NULL,
	[Display] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 22/6/2020 10:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CateId] [int] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Price] [int] NOT NULL,
	[Discount] [float] NULL,
	[Information] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](128) NULL,
	[Display] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22/6/2020 10:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](16) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Lock] [bit] NOT NULL,
 CONSTRAINT [PK__Users__3214EC073C10EE7F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (43, 1, 29000, 24, 1)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (44, 1, 290000, 2, 2)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (45, 2, 580000, 1, 2)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (46, 1, 308000, 6, 3)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (47, 1, 590000, 5, 3)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (48, 1, 308000, 6, 6)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (49, 1, 290000, 4, 6)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (50, 1, 590000, 5, 6)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (51, 1, 440000, 7, 6)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (52, 1, 29000, 24, 6)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (53, 1, 490000, 13, 3)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (54, 1, 294000, 11, 3)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (55, 1, 308000, 6, 7)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (58, 2, 29000, 23, 8)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (59, 1, 29000, 24, 8)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (60, 1, 490000, 9, 9)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (65, 2, 29000, 24, 9)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (66, 1, 29000, 23, 9)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (68, 3, 29000, 24, 10)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (72, 1, 29000, 23, 10)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (73, 1, 29000, 23, 12)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (74, 2, 29000, 24, 12)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (75, 2, 19000, 19, 17)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (76, 1, 29000, 24, 18)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (80, 3, 29000, 24, 19)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (81, 1, 29000, 23, 19)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (82, 1, 29000, 24, 20)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (83, 1, 440000, 7, 22)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (84, 1, 490000, 12, 23)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (85, 4, 294000, 11, 23)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (87, 5, 145000, 1, 25)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (89, 5, 19000, 20, 25)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (90, 4, 290000, 2, 26)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (91, 4, 29000, 25, 27)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (92, 10, 270000, 8, 28)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (94, 13, 270000, 8, 31)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (95, 13, 145000, 1, 31)
INSERT [dbo].[CartItems] ([Id], [Quantity], [UnitPrice], [ProId], [CartId]) VALUES (96, 6, 22500, 28, 32)
SET IDENTITY_INSERT [dbo].[CartItems] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (1, 2, CAST(N'2019-09-21' AS Date), N'thuong', N'0372704074', N'97, Man Thiện, P.Hiệp Phú, Quận9', N'Khách Vip', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (2, 3, CAST(N'2019-10-21' AS Date), N'lep', N'0372704074', N'97, Man Thiện, P.Hiệp Phú, Quận9', N'giao buổi sáng', N'COD', 3)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (3, 3, CAST(N'2020-06-11' AS Date), N'lep', N'0372704074', N'97, Man Thiện, P.Hiệp Phú, Quận 9', N'', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (6, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (7, 3, CAST(N'2020-06-11' AS Date), N'lep', N'0372704074', N'97, Man Thiện, P.Hiệp Phú, Quận 9', N'', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (9, 6, CAST(N'2020-06-12' AS Date), N'hung diep', N'0342904876', N'hhshshshs', N'asdadadasds', N'COD', 3)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (10, 6, CAST(N'2020-06-12' AS Date), N'dfffdfdfd', N'0342904876', N'quan 9', N'', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (11, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (12, 6, CAST(N'2020-06-13' AS Date), N'sssssssssssss', N'0342904876', N'quan 9', N'khach vid', N'COD', 3)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (17, 6, CAST(N'2020-06-13' AS Date), N'thuận', N'0342904876', N'quan 9', N'lozz', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (18, 6, CAST(N'2020-06-13' AS Date), N'admin', N'0342904876', N'quan 9', N'khach vid', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (19, 6, CAST(N'2020-06-13' AS Date), N'hung diep', N'0342904876', N'quan 9', N'lozz', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (20, 6, CAST(N'2020-06-13' AS Date), N'asdas', N'0342904876', N'hhshshshs', N'lozz', N'COD', 0)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (21, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (22, 8, CAST(N'2020-06-17' AS Date), N'hung diep', N'0342904876', N'hhshshshs', N'khach vid', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (23, 8, CAST(N'2020-06-17' AS Date), N'thuận', N'0342904876', N'ssdsd', N'', N'COD', 3)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (24, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (25, 9, CAST(N'2020-06-18' AS Date), N'hung diep', N'0342904876', N'hhshshshs', N'eqweq', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (26, 9, CAST(N'2020-06-18' AS Date), N'asdas', N'0342904876', N'quan 9', N'khach vid', N'COD', 3)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (27, 9, CAST(N'2020-06-18' AS Date), N'adas', N'0342904876', N'hhshshshs', N'eqweq', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (28, 9, CAST(N'2020-06-18' AS Date), N'hung diep', N'0342904876', N'quan 9', N'khach vid', N'COD', 0)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (29, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (30, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (31, 11, CAST(N'2020-06-20' AS Date), N'hung diep', N'0342904876', N'quan 9', N'lozz', N'COD', 2)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (32, 11, CAST(N'2020-06-20' AS Date), N'hung diep', N'0342904876', N'quan 9', N'khach vid', N'COD', 3)
INSERT [dbo].[Carts] ([Id], [UserId], [BuyDate], [Name], [Phone], [Address], [Note], [Payment], [Status]) VALUES (33, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (1, N'Freeze', N'images/category-image/freeze1.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (2, N'Cà phê', N'images/category-image/cafe1.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (3, N'Trà', N'images/category-image/tra1.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (4, N'Bánh mì', N'images/category-image/banhmi1.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (5, N'Khác', N'images/category-image/khac1.png', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (7, N'test', N'images/category-image/freeze1.jpg', 1)
INSERT [dbo].[Categories] ([CateId], [CateName], [CateImage], [Display]) VALUES (10, N'test123', N'images/category-image/tra1.png', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (1, 1, N'Phin Sữa Đá', 290000, 0.5, NULL, N'Hương vị cà phê Việt Nam đích thực! Từng hạt cà phê hảo hạng được chọn bằng tay, phối trộn độc đáo giữa hạt Robusta từ cao nguyên Việt Nam, thêm Arabica thơm lừng. Cà phê được pha từ Phin truyền thống, hoà cùng sữa đặc sánh và thêm vào chút đá tạo nên ly Phin Sữa Đá – Đậm Đà Chất Phin.', N'images/product-image/phin-sua-da.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (2, 1, N'Phin Đen Đá', 290000, 0, NULL, N'Dành cho những tín đồ cà phê đích thực! Hương vị cà phê truyền thống được phối trộn độc đáo tại Highlands. Cà phê đậm đà pha hoàn toàn từ Phin, cho thêm 1 thìa đường, một ít đá viên mát lạnh, tạo nên Phin Đen Đá mang vị cà phê đậm đà chất Phin.', N'images/product-image/phin-den-da.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (3, 1, N'Phin Đen Nóng', 290000, 0, NULL, N'Dành cho những tín đồ cà phê đích thực! Hương vị cà phê truyền thống được phối trộn độc đáo tại Highlands. Cà phê đậm đà pha từ Phin, cho thêm 1 thìa đường, mang đến vị cà phê đậm đà chất Phin.', N'images/product-image/phin-den-nong.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (4, 1, N'Phin Sữa Nóng', 290000, 0, NULL, N'Hương vị cà phê Việt Nam đích thực! Từng hạt cà phê hảo hạng được chọn bằng tay, phối trộn độc đáo giữa hạt Robusta từ cao nguyên Việt Nam, thêm Arabica thơm lừng. Kết hợp với nước sôi từng giọt cà phê được chiết xuất từ Phin truyền thống, hoà cùng sữa đặc sánh tạo nên ly Phin Sữa Nóng – Đậm đà chất Phin.', N'images/product-image/phin-sua-nong.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (5, 1, N'Mocha Macchiato', 590000, 0, NULL, N'Một thức uống yêu thích được kết hợp bởi giữa sốt sô cô la ngọt ngào, sữa tươi và đặc biệt là cà phê espresso đậm đà mang thương hiệu Highlands Coffee. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.', N'images/product-image/mocha-macchiato.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (6, 1, N'Espresso', 440000, 0.3, NULL, N'Đích thực là ly cà phê espresso ngon đậm đà! Được chiết xuất một cách hoàn hảo từ loại cà phê rang được phối trộn độc đáo từ những hạt cà phê Robusta và Arabica chất lượng hảo hạng', N'images/product-image/espresso.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (7, 1, N'Americano', 440000, 0, NULL, N'Americano tại Highlands Coffee là sự kết hợp giữa cà phê espresso thêm vào nước đun sôi. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.', N'images/product-image/americano.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (8, 1, N'Latte', 540000, 0.5, NULL, N'Ly cà phê sữa ngọt ngào đến khó quên! Với một chút nhẹ nhàng hơn so với Cappuccino, Latte của chúng tôi bắt đầu với cà phê espresso, sau đó thêm sữa tươi và bọt sữa một cách đầy nghệ thuật. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.', N'images/product-image/latte.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (9, 2, N'Caramel Phin Freeze', 490000, 0, NULL, N'Thơm ngon khó cưỡng! Được kết hợp từ cà phê truyền thống chỉ có tại Highlands Coffee, cùng với caramel, thạch cà phê và đá xay mát lạnh. Trên cùng là lớp kem tươi thơm béo và caramel ngọt ngào. Món nước phù hợp trong những cuộc gặp gỡ bạn bè, bởi sự ngọt ngào thường mang mọi người xích lại gần nhau. ', N'images/product-image/caramel-phin-freeze.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (10, 2, N'Classic Phin Freeze', 490000, 0, NULL, N'Thơm ngon đậm đà! Được kết hợp từ cà phê pha Phin truyền thống chỉ có tại Highlands Coffee, cùng với thạch cà phê và đá xay mát lạnh. Trên cùng là lớp kem tươi thơm béo và bột ca cao đậm đà. Món nước hoàn hảo để khởi đầu câu chuyện cùng bạn bè.', N'images/product-image/classic-phin-freeze.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (11, 2, N'Freeze Trà Xanh', 490000, 0.4, NULL, N'Thức uống rất được ưa chuộng! Trà xanh thượng hạng từ cao nguyên Việt Nam, kết hợp cùng đá xay, thạch trà dai dai, thơm ngon và một lớp kem dày phủ lên trên vô cùng hấp dẫn. Freeze Trà Xanh thơm ngon, mát lạnh, chinh phục bất cứ ai!', N'images/product-image/freeze-tra-xanh.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (12, 2, N'Cookies & Cream', 490000, 0, NULL, N'Một thức uống ngon lạ miệng bởi sự kết hợp hoàn hảo giữa cookies sô cô la giòn xốp cùng hỗn hợp sữa tươi cùng sữa đặc đem say với đá viên, và cuối cùng không thể thiếu được chính là lớp kem whip mềm mịn cùng cookies sô cô la say nhuyễn.', N'images/product-image/cookies-cream.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (13, 2, N'Freeze Sô-cô-la', 490000, 0, NULL, N'Thiên đường đá xay sô cô la! Từ những thanh sô cô la Việt Nam chất lượng được đem xay với đá cho đến khi mềm mịn, sau đó thêm vào thạch sô cô la dai giòn, ở trên được phủ một lớp kem whip beo béo và sốt sô cô la ngọt ngào. Tạo thành Freeze Sô-cô-la ngon mê mẩn chinh phục bất kì ai!', N'images/product-image/freeze-socola.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (14, 3, N'Trà Sen Vàng', 390000, 0, NULL, N'Thức uống chinh phục những thực khách khó tính! Sự kết hợp độc đáo giữa trà Ô long, hạt sen thơm bùi và củ năng giòn tan. Thêm vào chút sữa sẽ để vị thêm ngọt ngào.', N'images/product-image/tra-sen-vang.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (15, 3, N'Trà Thạch Vải', 39000, 0, NULL, N'Một sự kết hợp thú vị giữa trà đen, những quả vải thơm ngon và thạch vàng giòn béo, mang đến thức uống tuyệt hảo!', N'images/product-image/tra-thach-vai.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (16, 3, N'Trà Thạch Đào', 39000, 0.1, NULL, N'Vị trà đậm đà kết hợp cùng những miếng đào thơm ngon mọng nước cùng thạch đào giòn dai. Thêm vào ít sữa để gia tăng vị béo.', N'images/product-image/tra-thach-dao.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (17, 3, N'Trà Thanh Đào', 39000, 0, NULL, N'Một trải nghiệm thú vị khác! Sự hài hòa giữa vị trà cao cấp, vị sả thanh mát và những miếng đào thơm ngon mọng nước sẽ mang đến cho bạn một thức uống tuyệt vời.', N'images/product-image/tra-thanh-dao.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (18, 4, N'Thịt nướng', 19000, 0, NULL, N'Đặc sản của Việt Nam! Bánh mì giòn với nhân thịt nướng, rau thơm và gia vị đậm đà, hòa quyện trong lớp nước sốt tuyệt hảo.', N'images/product-image/thit-nuong.png', 0)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (19, 4, N'Xíu mại', 19000, 0, NULL, N'Bánh mì Việt Nam giòn thơm, với nhân thịt viên hấp dẫn, phủ thêm một lớp nước sốt cà chua ngọt, cùng với rau tươi và gia vị đậm đà.', N'images/product-image/xiu-mai.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (20, 4, N'Gà Xé Nước Tương', 19000, 0, NULL, N'Bánh mì Việt Nam giòn thơm với nhân gà xé, rau, gia vị hòa quyện cùng nước sốt đặc biệt.', N'images/product-image/ga-xe-nuoc-tuong.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (21, 4, N'Chả lụa xá xíu', 19000, 0, NULL, N'Bánh mì Việt Nam giòn thơm với chả lụa và thịt xá xíu thơm ngon, kết hợp cùng rau và gia vị, hòa quyện cùng nước sốt độc đáo.', N'images/product-image/cha-lua-xa-xiu.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (22, 5, N'Bánh Mousse Cacao', 29000, 0, NULL, N'Bánh Mousse Ca Cao, là sự kết hợp giữa ca-cao Việt Nam đậm đà cùng kem tươi.', N'images/product-image/banh-mousse-cacao.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (23, 5, N'Bánh Sô-cô-la Highlands', 29000, 0, NULL, N'Một chiếc bánh độc đáo! Sô cô la ngọt ngào và kem tươi béo ngậy, được phủ thêm một lớp sô cô la mỏng bên trên cho thêm phần hấp dẫn.', N'images/product-image/banh-socola-highlands.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (24, 5, N'Bánh Caramel Phô Mai', 29000, 0, NULL, N'Ngon khó cưỡng! Bánh phô mai thơm béo được phủ bằng lớp caramel ngọt ngào', N'images/product-image/banh-caramel-pho-mai.jpg', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (25, 5, N'Bánh Mousse Đào', 29000, 0, NULL, N'Một sự kết hợp khéo léo giữa kem và lớp bánh mềm, được phủ lên trên vài lát đào ngon tuyệt.', N'images/product-image/banh-mousse-dao.png', 1)
INSERT [dbo].[Products] ([Id], [CateId], [Name], [Price], [Discount], [Information], [Description], [Image], [Display]) VALUES (28, 7, N'hhhhh', 30000, 0.25, N'dsada', N'mmmm', N'images/product-image/caramel-phin-freeze.png', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (1, N'admin@gmail.com', N'admin', N'123', 1, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (2, N'thuong@gmail.com', N'thuong', N'123', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (3, N'lep@gmail.com', N'lep', N'123', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (4, N'hungdiep147@gmail.com', N'boixate2', N'conaive1', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (5, N'hungdiep147@gmail.com', N'boist99', N'1234567', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (6, N'hundiep147@gmail.com', N'boixate', N'123', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (7, N'hungdiep147@gmail.com', N'kakatjkl', N'123', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (8, N'hungdiep147@gmail.com', N'boixate3', N'123', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (9, N'tpknntt@gmail.com', N'aee', N'1234', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (10, N'lep1111@gmail.com', N'aeee', N'123', 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [RoleId], [Lock]) VALUES (11, N'lep1233@gmail.com', N'aee1', N'1234', 0, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK__CartItems__CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK__CartItems__CartId]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK__CartItems__ProId] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK__CartItems__ProId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK__Carts__UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK__Carts__UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__CateId] FOREIGN KEY([CateId])
REFERENCES [dbo].[Categories] ([CateId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__CateId]
GO
