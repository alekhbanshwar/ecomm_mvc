USE [ecomm]
GO
/****** Object:  Table [dbo].[tblAdminLogin]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdminLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](150) NULL,
	[password] [nvarchar](20) NULL,
	[profile] [nvarchar](max) NULL,
	[isDel] [nvarchar](11) NULL,
	[usertype] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblAdminLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBanner]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBanner](
	[bannerId] [int] IDENTITY(1,1) NOT NULL,
	[bannerTitle] [nvarchar](max) NULL,
	[descr] [nvarchar](max) NULL,
	[bannerSmallTitle] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[addedOn] [date] NULL,
	[bannerImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblBanner] PRIMARY KEY CLUSTERED 
(
	[bannerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblbrand]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbrand](
	[brId] [int] IDENTITY(1,1) NOT NULL,
	[brName] [nvarchar](50) NULL,
	[brImage] [nvarchar](max) NULL,
	[isDel] [bit] NULL,
	[addDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[brId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCarts]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCarts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[userType] [nvarchar](20) NULL,
	[qty] [int] NULL,
	[proId] [int] NULL,
	[proAttrId] [int] NULL,
	[addedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[catId] [int] IDENTITY(1,1) NOT NULL,
	[catName] [nvarchar](50) NOT NULL,
	[catImage] [nvarchar](max) NOT NULL,
	[isDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[catId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblColor]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblColor](
	[colId] [int] IDENTITY(1,1) NOT NULL,
	[colName] [nvarchar](50) NOT NULL,
	[isDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[colId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[odId] [int] IDENTITY(1,1) NOT NULL,
	[orders_id] [int] NULL,
	[product_id] [int] NULL,
	[products_attr_id] [int] NULL,
	[price] [decimal](10, 2) NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[odId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customersId] [int] NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobile] [nvarchar](15) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](100) NULL,
	[state] [nvarchar](100) NULL,
	[pincode] [nvarchar](15) NULL,
	[orderStatus] [int] NULL,
	[paymentType] [nvarchar](50) NULL,
	[paymentStatus] [nvarchar](50) NULL,
	[paymentId] [nvarchar](255) NULL,
	[txnId] [nvarchar](255) NULL,
	[totalAmt] [decimal](10, 2) NULL,
	[trackDetails] [nvarchar](max) NULL,
	[added_on] [date] NULL,
	[isDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderStatus]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderStatus](
	[statusId] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblOrderStatus] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProAttr]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProAttr](
	[proAttrId] [int] IDENTITY(1,1) NOT NULL,
	[proId] [int] NULL,
	[proAttrImage] [nvarchar](max) NULL,
	[colorId] [int] NULL,
	[qty] [int] NULL,
	[size] [nvarchar](20) NULL,
	[isDel] [bit] NULL,
	[addDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[proAttrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[proId] [int] IDENTITY(1,1) NOT NULL,
	[proName] [nvarchar](max) NULL,
	[proImage] [nvarchar](max) NULL,
	[catId] [int] NULL,
	[subCatId] [int] NULL,
	[model] [nvarchar](50) NULL,
	[bId] [int] NULL,
	[description] [text] NULL,
	[shortDesc] [text] NULL,
	[uses] [text] NULL,
	[addInfo] [text] NULL,
	[proPrice] [decimal](18, 2) NULL,
	[proDisPrice] [decimal](18, 2) NULL,
	[isPromo] [int] NULL,
	[isFeatured] [int] NULL,
	[isTranding] [int] NULL,
	[isDiscounted] [int] NULL,
	[addDateTime] [datetime] NULL,
	[isDel] [bit] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[proId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProImages]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProImages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[images] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegistration]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegistration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](150) NULL,
	[UserEmail] [nvarchar](150) NULL,
	[profile] [nvarchar](max) NULL,
	[MobileNumber] [nvarchar](30) NULL,
	[Password] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Address] [text] NULL,
	[UserType] [nvarchar](50) NULL,
	[isDel] [bit] NULL,
	[addRegDate] [datetime] NULL,
 CONSTRAINT [PK_tblRegistration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubCategory]    Script Date: 21-02-2024 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubCategory](
	[subCatId] [int] IDENTITY(1,1) NOT NULL,
	[subCatName] [nvarchar](150) NOT NULL,
	[catId] [int] NULL,
	[isDel] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAdminLogin] ON 

INSERT [dbo].[tblAdminLogin] ([id], [email], [password], [profile], [isDel], [usertype]) VALUES (1, N'admin@gmail.com', N'admin@123', N'NULL', N'false', N'admin')
SET IDENTITY_INSERT [dbo].[tblAdminLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[tblBanner] ON 

INSERT [dbo].[tblBanner] ([bannerId], [bannerTitle], [descr], [bannerSmallTitle], [url], [addedOn], [bannerImage]) VALUES (2, N'NEW TREND 2024', N'description', N'Men‘s Collection ', N'url', CAST(N'2024-02-13' AS Date), N'd6e46d61de304498a22d437cda1249f4.jpg')
SET IDENTITY_INSERT [dbo].[tblBanner] OFF
GO
SET IDENTITY_INSERT [dbo].[tblbrand] ON 

INSERT [dbo].[tblbrand] ([brId], [brName], [brImage], [isDel], [addDate]) VALUES (3, N'Samah ', N'f1f5226e642d443a80c1311964ef2bc2.jpg', 0, CAST(N'2024-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[tblbrand] ([brId], [brName], [brImage], [isDel], [addDate]) VALUES (4, N'Nike', N'5d262d4f29034751a71cd5ff64a8410c.jpg', 0, CAST(N'2024-02-14T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblbrand] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCarts] ON 

INSERT [dbo].[tblCarts] ([id], [userId], [userType], [qty], [proId], [proAttrId], [addedOn]) VALUES (1, 662192826, N'Not-Reg', 2, 1, 2, CAST(N'2024-02-14' AS Date))
INSERT [dbo].[tblCarts] ([id], [userId], [userType], [qty], [proId], [proAttrId], [addedOn]) VALUES (2, 366513411, N'Not-Reg', 1, 1, 2, CAST(N'2024-02-14' AS Date))
SET IDENTITY_INSERT [dbo].[tblCarts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([catId], [catName], [catImage], [isDel]) VALUES (1, N'Boy''s', N'e853f69e7ce4451d96c13b7556c4b8dd.jpg', 0)
INSERT [dbo].[tblCategory] ([catId], [catName], [catImage], [isDel]) VALUES (2, N'Girl''s', N'18acca170b3e4d3184014574eec81653.jpg', 0)
INSERT [dbo].[tblCategory] ([catId], [catName], [catImage], [isDel]) VALUES (3, N'Child''s', N'd1a7b7f1811f4dee82050458fb7fad56.jpg', 0)
INSERT [dbo].[tblCategory] ([catId], [catName], [catImage], [isDel]) VALUES (4, N'Men''s', N'c18ff923dd0545ecbeb815ca78c39c89.jpg', 0)
INSERT [dbo].[tblCategory] ([catId], [catName], [catImage], [isDel]) VALUES (7, N'Women''s', N'dc1a89f6b73640a1a9f3657115e0d746.jpg', 0)
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblColor] ON 

INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (1, N'black,red', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (2, N'blue', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (3, N'red', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (4, N'yellow', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (5, N'green', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (6, N'white', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (7, N'black', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (8, N'pink', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (9, N'orange', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (10, N'gray', 0)
INSERT [dbo].[tblColor] ([colId], [colName], [isDel]) VALUES (11, N'brown', 0)
SET IDENTITY_INSERT [dbo].[tblColor] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProAttr] ON 

INSERT [dbo].[tblProAttr] ([proAttrId], [proId], [proAttrImage], [colorId], [qty], [size], [isDel], [addDateTime]) VALUES (1, 1, N'1283710f61f14483aad7117355a1955b.jpg', 1, 500, N'', 0, CAST(N'2024-02-14T17:13:44.843' AS DateTime))
INSERT [dbo].[tblProAttr] ([proAttrId], [proId], [proAttrImage], [colorId], [qty], [size], [isDel], [addDateTime]) VALUES (2, 1, N'23d0eb1495d9437b9f5fcf6204f60446.jpg', 2, 500, N'', 0, CAST(N'2024-02-14T17:16:33.787' AS DateTime))
INSERT [dbo].[tblProAttr] ([proAttrId], [proId], [proAttrImage], [colorId], [qty], [size], [isDel], [addDateTime]) VALUES (3, 1, N'8a5e4db735244821b45eaa4e204858c3.jpg', 8, 500, N'', 0, CAST(N'2024-02-14T22:46:54.393' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblProAttr] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([proId], [proName], [proImage], [catId], [subCatId], [model], [bId], [description], [shortDesc], [uses], [addInfo], [proPrice], [proDisPrice], [isPromo], [isFeatured], [isTranding], [isDiscounted], [addDateTime], [isDel]) VALUES (1, N'Printed, Geometric Print, Embellished Bhagalpuri Silk Blend, Cotton Silk Saree', N'cae0ae4aeb164ae09232253a8f25402d.jpg', 7, 2, N'Model', 3, N'Description', N'Short Description', N'Uses', N'Additional Information', CAST(1479.00 AS Decimal(18, 2)), CAST(279.00 AS Decimal(18, 2)), 0, 1, 1, 0, CAST(N'2024-02-14T16:51:46.530' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProImages] ON 

INSERT [dbo].[tblProImages] ([id], [productId], [images]) VALUES (1, 1, N'd643fd2bb88e4e60ad4f40ec88c6deb1.jpg')
INSERT [dbo].[tblProImages] ([id], [productId], [images]) VALUES (2, 1, N'790af73f351849e1b02d144eb5561294.jpg')
INSERT [dbo].[tblProImages] ([id], [productId], [images]) VALUES (3, 1, N'ad45fcfd0db54dbf8f532b3abb29b378.jpg')
INSERT [dbo].[tblProImages] ([id], [productId], [images]) VALUES (4, 1, N'a0c332ec645e44129d2133ef605a28e6.jpg')
INSERT [dbo].[tblProImages] ([id], [productId], [images]) VALUES (5, 1, N'9d890d8574004bc6bba0cb56a440c78a.jpg')
INSERT [dbo].[tblProImages] ([id], [productId], [images]) VALUES (6, 1, N'1f31bcd97d5a4e7a9425af15cf335362.jpg')
SET IDENTITY_INSERT [dbo].[tblProImages] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRegistration] ON 

INSERT [dbo].[tblRegistration] ([id], [UserName], [UserEmail], [profile], [MobileNumber], [Password], [City], [State], [ZipCode], [Address], [UserType], [isDel], [addRegDate]) VALUES (1, N'Alekh Banshwar', N'alekh@gmail.com', N'288824be12014e648092508b231e6b8d.jpeg', N'6388328558', N'alekh@123', N'NULL', N'NULL', N'262701', N'NULL', N'Reg', 0, CAST(N'2024-02-14T22:23:38.737' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRegistration] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubCategory] ON 

INSERT [dbo].[tblSubCategory] ([subCatId], [subCatName], [catId], [isDel]) VALUES (2, N'Saare''s', 7, 0)
INSERT [dbo].[tblSubCategory] ([subCatId], [subCatName], [catId], [isDel]) VALUES (3, N'T-Shirt''s', 1, 0)
INSERT [dbo].[tblSubCategory] ([subCatId], [subCatName], [catId], [isDel]) VALUES (4, N'Shoot''s', 2, 0)
INSERT [dbo].[tblSubCategory] ([subCatId], [subCatName], [catId], [isDel]) VALUES (5, N'Pant''s', 3, 0)
INSERT [dbo].[tblSubCategory] ([subCatId], [subCatName], [catId], [isDel]) VALUES (6, N'Shirt''s', 4, 0)
INSERT [dbo].[tblSubCategory] ([subCatId], [subCatName], [catId], [isDel]) VALUES (7, N'Pant''s', 1, 0)
SET IDENTITY_INSERT [dbo].[tblSubCategory] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblColor__ADE904660934A82A]    Script Date: 21-02-2024 19:46:30 ******/
ALTER TABLE [dbo].[tblColor] ADD UNIQUE NONCLUSTERED 
(
	[colName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAdminLogin] ADD  DEFAULT ('false') FOR [isDel]
GO
ALTER TABLE [dbo].[tblCategory] ADD  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[tblColor] ADD  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[tblRegistration] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[tblRegistration] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[tblRegistration] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[tblCarts]  WITH CHECK ADD FOREIGN KEY([proAttrId])
REFERENCES [dbo].[tblProAttr] ([proAttrId])
GO
ALTER TABLE [dbo].[tblCarts]  WITH CHECK ADD FOREIGN KEY([proId])
REFERENCES [dbo].[tblProduct] ([proId])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([orders_id])
REFERENCES [dbo].[tblOrders] ([id])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tblProduct] ([proId])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([products_attr_id])
REFERENCES [dbo].[tblProAttr] ([proAttrId])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([customersId])
REFERENCES [dbo].[tblRegistration] ([id])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([orderStatus])
REFERENCES [dbo].[tblOrderStatus] ([statusId])
GO
ALTER TABLE [dbo].[tblProAttr]  WITH CHECK ADD  CONSTRAINT [FK_tblProImages_tblColor] FOREIGN KEY([colorId])
REFERENCES [dbo].[tblColor] ([colId])
GO
ALTER TABLE [dbo].[tblProAttr] CHECK CONSTRAINT [FK_tblProImages_tblColor]
GO
ALTER TABLE [dbo].[tblProAttr]  WITH CHECK ADD  CONSTRAINT [FK_tblProImages_tblProduct] FOREIGN KEY([proId])
REFERENCES [dbo].[tblProduct] ([proId])
GO
ALTER TABLE [dbo].[tblProAttr] CHECK CONSTRAINT [FK_tblProImages_tblProduct]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblbrand] FOREIGN KEY([bId])
REFERENCES [dbo].[tblbrand] ([brId])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblbrand]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([catId])
REFERENCES [dbo].[tblCategory] ([catId])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblSubCategory] FOREIGN KEY([subCatId])
REFERENCES [dbo].[tblSubCategory] ([subCatId])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblSubCategory]
GO
ALTER TABLE [dbo].[tblProImages]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[tblProduct] ([proId])
GO
ALTER TABLE [dbo].[tblSubCategory]  WITH CHECK ADD FOREIGN KEY([catId])
REFERENCES [dbo].[tblCategory] ([catId])
GO
/****** Object:  StoredProcedure [dbo].[InsertOrUpdateOrder]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUpdateOrder]
(

    @id INT = 0,
    @customersId INT = 0,
    @name VARCHAR(255) = '',
    @email VARCHAR(255) = '',
    @mobile VARCHAR(15) = '',
    @address VARCHAR(max) = '',
    @city VARCHAR(100) = '',
    @state VARCHAR(100) = '',
    @pincode VARCHAR(15) = '',
    @orderStatus INT =0,
    @paymentType VARCHAR(50) = '',
    @paymentStatus VARCHAR(50) = '',
    @totalAmt DECIMAL(10, 2) = 0.00,
    @trackDetails VARCHAR(MAX) = '',
    @added_on DATE=NULL,
    @isDel BIT = 0,
	@Action char(1),
	@InsertedId  INT OUTPUT
)
AS
BEGIN

    IF @Action = 'I'
    BEGIN
        -- Insert data into tblOrders
        INSERT INTO tblOrders (
            customersId, name, email, mobile, address, city, state, pincode,
            orderStatus, paymentType, paymentStatus, totalAmt, trackDetails, added_on, isDel
        )
        VALUES (
            @customersId, @name, @email, @mobile, @address, @city, @state, @pincode,
            @orderStatus, @paymentType, @paymentStatus, @totalAmt, @trackDetails, @added_on, @isDel
        );

        -- Select the last inserted order_id
        SET @InsertedId = SCOPE_IDENTITY();

       

	END
	 ELSE if @Action = 'S'
    BEGIN
             
			 --Select data from tblOrders
			 SELECT *
        FROM tblOrders
        LEFT JOIN tblOrderStatus ON tblOrders.orderStatus = tblOrderStatus.statusId where tblOrders.customersId=@customersId

	END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertOrUpdateOrderDetails]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUpdateOrderDetails]
(
    @odId INT=0,
    @orders_id INT = 0,
    @product_id INT = 0,
    @products_attr_id INT = 0,
    @price DECIMAL(10, 2) = 0.00,
    @qty INT = 0,

    @Action CHAR(1)
)
AS
BEGIN

    IF @Action = 'I'
    BEGIN
        

        -- Insert data into tblOrderDetails using the obtained order_id
        INSERT INTO tblOrderDetails (
            orders_id, product_id, products_attr_id, price, qty
        ) 
        VALUES (
            @orders_id, @product_id, @products_attr_id, @price, @qty
        );
    END
	ELSE IF @Action='S'
	BEGIN 
		SELECT * FROM tblOrderDetails LEFT JOIN tblProduct on tblProduct.proId=tblOrderDetails.product_id LEFT JOIN tblProAttr on tblProAttr.proAttrId=tblOrderDetails.products_attr_id LEFT JOIN tblOrders on tblOrders.id=tblOrderDetails.orders_id LEFT JOIN tblColor on tblProAttr.colorId=tblColor.colId WHERE tblOrderDetails.orders_id=@orders_id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_admin]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_admin]
	@email nvarchar(150),
	@password nvarchar(20),
	@usertype nvarchar(20),
	@isValid bit out
AS
BEGIN
	
	SET @isValid =(SELECT COUNT(email) from tblAdminLogin where email=@email and password=@password and @usertype=@usertype )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Banner]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Banner]
(
 @bannerId int = 0,
  @bannerTitle nvarchar(max) = 'null',
  @descr nvarchar(max) = 'null',
  @bannerSmallTitle nvarchar(max) = 'null',
  @url nvarchar(max) = 'null',
  @addedOn date = NULL,
  @bannerImage nvarchar(max) = 'null',
  @Action char(1)
)

AS 
BEGIN
		IF @Action='I'
			BEGIN
			 -- Insert operation
					INSERT INTO tblBanner(bannerTitle,descr,bannerSmallTitle,url,addedOn,bannerImage) 
					VALUES(@bannerTitle,@descr,@bannerSmallTitle,@url,@addedOn,@bannerImage);
			END

		ELSE IF @Action = 'S'
			BEGIN
			 -- Select operation
					SELECT * FROM tblBanner 
			END

		ELSE IF @Action = 'U'
			BEGIN
			 -- Update operation
			 IF @bannerImage='NULL'
				BEGIN 
					UPDATE tblBanner SET bannerTitle=@bannerTitle,descr=@descr,bannerSmallTitle=@bannerSmallTitle,url=@url WHERE bannerId=@bannerId
				END
			ELSE
				BEGIN
					UPDATE tblBanner SET bannerTitle=@bannerTitle,descr=@descr,bannerSmallTitle=@bannerSmallTitle,url=@url,bannerImage=@bannerImage WHERE bannerId=@bannerId
				END
					
			END
		ELSE IF @Action = 'D'
			BEGIN
        -- Delete operation
				   DELETE tblBanner  WHERE bannerId=@bannerId
			END

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Brand]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Brand]
	  @brId int = 0,
  @brName nvarchar(50) = 'null',
  @brImage nvarchar(max) = 'null',
  @isDel bit = 0,
  @Action char(1),
  @addDate datetime =NULL

  AS
  
BEGIN
		IF @Action='I'
			BEGIN
			 -- Insert operation
					INSERT INTO tblbrand(brName,brImage,isDel,addDate) 
					VALUES(@brName,@brImage,@isDel,@addDate);
			END

		ELSE IF @Action = 'S'
			BEGIN
			 -- Select operation
					SELECT * FROM tblbrand  WHERE tblbrand.isDel=@isDel
			END
			ELSE IF @Action = 'D'
			BEGIN
			 -- DELETE operation
					DELETE FROM tblbrand  WHERE brId=@brId
			END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Cart]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[sp_Cart]
(
  @id int = 0,
  @userId int = 0,
  @userType nvarchar(50) = 'null',
  @qty int = 0,
  @proId int = 0, 
  @proAttrId int = 0, 
  @addedOn date = NULL,
  @Action char(1)
)

AS 
BEGIN
		IF @Action='I'
			BEGIN
			 -- Insert operation
					INSERT INTO tblCarts(userId,userType,qty,proId,proAttrId,addedOn) VALUES(@userId,@userType,@qty,@proId,@proAttrId,@addedOn);
			END

		ELSE IF @Action = 'S'
			BEGIN
			 -- Select operation
					SELECT * FROM tblCarts 
			END

		
		ELSE IF @Action = 'D'
			BEGIN
        -- Delete operation
				   Delete tblCarts WHERE id = @id;
			END

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Category]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Category](
@catId int= 0,
	@catName nvarchar(50)= 'null',
	@catImage nvarchar(MAX)= 'null',
	@isDel bit =0 ,
	@Action char(6)
)
AS 

BEGIN
	IF @Action='Insert'
		BEGIN
			-- Insert operation
			INSERT INTO tblCategory (catName,catImage,isDel) values(@catName,@catImage,@isDel)
		END

	ELSE IF @Action='Select'
		BEGIN
			-- Select Data
			SELECT * FROM tblCategory 
		END

	ELSE IF @Action='Update'
	    BEGIN 
			-- Update operation
			 IF @catImage='NULL'
				BEGIN 
					UPDATE tblCategory SET catName=@catName WHERE catId=@catId
				END
			ELSE
				BEGIN
					UPDATE tblCategory SET catName=@catName,catImage=@catImage WHERE catId=@catId
				END	
		END

    ELSE IF @Action = 'Delete'
		BEGIN 
			-- Delete Operation
			DELETE FROM tblCategory WHERE catId=@catId
		END

	ELSE IF @Action ='ADtive'
		BEGIN
			-- Update Operation
			IF @isDel='true'
				UPDATE tblCategory SET isDel=@isDel WHERE catId=@catId
			ELSE IF @isDel='false'
				UPDATE tblCategory SET isDel=@isDel WHERE catId=@catId
		END
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLoginDetails]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CheckLoginDetails]
(
  @UserEmail NVARCHAR(150),
  @Password NVARCHAR(20),
  @IsValid BIT OUT,
  @UserID INT OUT
)
AS 
BEGIN
    DECLARE @Count INT

    SELECT @Count = COUNT(UserEmail), @UserID = MAX(id)	
    FROM tblRegistration
    WHERE UserEmail = @UserEmail AND Password = @Password

    SET @IsValid = CASE WHEN @Count > 0 THEN 1 ELSE 0 END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Product]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Product]
(
 @proId int = 0,
  @proName nvarchar(max) = 'null',
  @proImage nvarchar(max) = 'null',
  @catId int = 0,
  @subcatId int = 0,
  @model nvarchar(50) = 'null',
  @bId int = 0,
  @description text = 'null',
  @shortDesc text = 'null',
  @uses text = 'null',
  @addInfo text = 'null',
  @proPrice decimal(18, 2) = NULL,
  @proDisPrice decimal(18, 2) = NULL,
  @isPromo int = 0, 
  @isFeatured int = 0, 
  @isTranding int = 0, 
  @isDiscounted int = 0,
  @addDateTime datetime = NULL,
  @isDel bit = 0,
  @Action char(1)
)

AS 
BEGIN
		IF @Action='I'
			BEGIN
			 -- Insert operation
					INSERT INTO tblProduct(proName,proImage,catId,subcatId,model,bId,description,shortDesc,uses,addInfo,proPrice,proDisPrice,isPromo,isFeatured,isTranding,isDiscounted,addDateTime,isDel) 
					VALUES(@proName,@proImage,@catId,@subcatId,@model,@bId,@description,@shortDesc,@uses,@addInfo,@proPrice,@proDisPrice,@isPromo,@isFeatured,@isTranding,@isDiscounted,@addDateTime,@isDel);
			END

		ELSE IF @Action = 'S'
			BEGIN
			 -- Select operation
					SELECT * FROM tblProduct LEFT JOIN tblCategory ON tblProduct.catId=tblCategory.catId LEFT JOIN tblSubCategory ON tblProduct.subcatId=tblSubCategory.subCatId  WHERE tblProduct.isDel='FALSE'
			END

		ELSE IF @Action = 'U'
			BEGIN
			 -- Update operation
			 IF @proImage='NULL'
				BEGIN 
					UPDATE tblProduct SET proName=@proName, catId=@catId,subcatId=@subcatId,model=@model,bId=@bId,description=@description,shortDesc=@shortDesc,uses=@uses,addInfo=@addInfo,proPrice=@proPrice,proDisPrice=@proDisPrice,isPromo=@isPromo,isFeatured=@isFeatured,isTranding=@isTranding,isDiscounted=@isDiscounted WHERE proId=@proId
				END
			ELSE
				BEGIN
					UPDATE tblProduct SET proName=@proName,proImage=@proImage,catId=@catId,subcatId=@subcatId,model=@model,bId=@bId,description=@description,shortDesc=@shortDesc,uses=@uses,addInfo=@addInfo,proPrice=@proPrice,proDisPrice=@proDisPrice,isPromo=@isPromo,isFeatured=@isFeatured,isTranding=@isTranding,isDiscounted=@isDiscounted WHERE proId=@proId
				END
					
			END
		ELSE IF @Action = 'D'
			BEGIN
        -- Delete operation
				   UPDATE tblProduct SET isDel=@isDel WHERE proId = @proId;
			END

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductAttr]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProductAttr]
(
	@proAttrId int =0,
	@proId int = 0,
	@proAttrImage nvarchar(max) = 'null',
	@colorId int = 0,
	@qty int = 0,
	@size nvarchar(50) = 'null',
	@addDateTime datetime = NULL,
	@isDel bit = 0,
	@Action char(1)
)

AS 
BEGIN
		IF @Action='I'
			BEGIN
			 -- Insert operation
					INSERT INTO tblProAttr(proId,proAttrImage,colorId,qty,size,addDateTime,isDel) 
					VALUES(@proId,@proAttrImage,@colorId,@qty,@size,@addDateTime,@isDel);
			END

		ELSE IF @Action = 'S'
			BEGIN
			 -- Select operation
					SELECT * FROM tblProAttr LEFT JOIN tblProduct ON tblProAttr.proId=tblProduct.proId LEFT JOIN tblColor ON tblProAttr.colorId=tblColor.colId  WHERE tblProAttr.isDel='FALSE' and tblProAttr.proId=@proId
			END

		
		ELSE IF @Action = 'D'
			BEGIN
        -- Delete operation
				   delete tblProAttr  WHERE proAttrId = @proAttrId;
			END

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ProImages]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ProImages]
@id int =0,
@productId int =0,
@images nvarchar(max)='null',
@Action char(1)
AS 
BEGIN
		IF @Action='I'
			BEGIN
			 -- Insert operation
					INSERT INTO tblProImages(productId,images) 
					VALUES(@productId,@images);
			END

		IF @Action='S'
			BEGIN
			 -- Insert operation
					SELECT * from tblProImages where productId=@productId
			END

		IF @Action='D'
		BEGIN 
			--Delete Operation
				Delete from tblProImages where id=@id
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SubCategory]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SubCategory](
@subCatId int =0,
@catId int= 0,
	@subCatName nvarchar(150)= 'null',
	@isDel bit =0 ,
	@Action char(6)
)
AS 

BEGIN
	IF @Action='Insert'
		BEGIN
			-- Insert operation
			INSERT INTO tblSubCategory(subCatName,catId,isDel) values(@subCatName,@catId,@isDel)
		END

	ELSE IF @Action='Select'
		BEGIN
			-- Select Data
			SELECT * FROM tblSubCategory left join tblCategory on tblSubCategory.catId=tblCategory.catId
		END

	ELSE IF @Action='Update'
	    BEGIN 
			-- Update Operation
			UPDATE tblSubCategory SET subCatName=@subCatName,catId=@catId WHERE subCatId=@subCatId
		END

    ELSE IF @Action = 'Delete'
		BEGIN 
			-- Delete Operation
			DELETE FROM tblSubCategory WHERE subCatId=@subCatId
		END

	ELSE IF @Action ='ADtive'
		BEGIN
			-- Update Operation
			IF @isDel='true'
				UPDATE tblSubCategory SET isDel=@isDel WHERE subCatId=@subCatId
			ELSE IF @isDel='false'
				UPDATE tblSubCategory SET isDel=@isDel WHERE subCatId=@subCatId
		END
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_userRegistration]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_userRegistration](
	@id int =0,
	@UserName nvarchar(150) = 'null',
	@UserEmail nvarchar(150) = 'null',
	@Profile nvarchar(max) = 'null',
	@MobileNumber nvarchar(30) = 'null',
	@Password nvarchar(20) = 'null',
	@City nvarchar(50) = 'null',
	@State nvarchar(50) = 'null',
	@ZipCode nvarchar(10) = 'null',
	@Address text = 'null',
	@UserType nvarchar(50) = 'null',
	@isDel bit = 0,
	@addRegDate datetime= NULL, 
	@Action char(1)
	
)
AS 

BEGIN
		IF @Action='I'
			BEGIN
					INSERT INTO tblRegistration (UserName,UserEmail,profile,MobileNumber,Password,City,State,ZipCode,Address,UserType,isDel,addRegDate) values(@UserName,@UserEmail,@Profile,@MobileNumber,@Password,@City,@State,@ZipCode,@Address,@UserType,@isDel,@addRegDate)
			END

		ELSE IF @Action = 'S'
			BEGIN
			 -- Select operation
					SELECT * FROM tblRegistration where isDel='false' order by UserName asc 
			END
END 
GO
/****** Object:  StoredProcedure [dbo].[spGetCategory]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCategory]
AS
BEGIN
    SELECT * FROM tblCategory WHERE isDel='FALSE'
END 
GO
/****** Object:  StoredProcedure [dbo].[spGetSubCategoryByCatId]    Script Date: 21-02-2024 19:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetSubCategoryByCatId]
  @catId int
AS
BEGIN
    SELECT * FROM tblSubCategory WHERE isDel='FALSE' and catId=@catId
END 
GO
