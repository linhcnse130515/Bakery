USE [master]
GO
/****** Object:  Database [Bakery]    Script Date: 7/30/2020 2:18:19 PM ******/
CREATE DATABASE [Bakery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bakery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SA\MSSQL\DATA\Bakery.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bakery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SA\MSSQL\DATA\Bakery_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Bakery] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bakery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bakery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bakery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bakery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bakery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bakery] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bakery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bakery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bakery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bakery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bakery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bakery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bakery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bakery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bakery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bakery] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bakery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bakery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bakery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bakery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bakery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bakery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bakery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bakery] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bakery] SET  MULTI_USER 
GO
ALTER DATABASE [Bakery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bakery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bakery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bakery] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bakery] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bakery', N'ON'
GO
ALTER DATABASE [Bakery] SET QUERY_STORE = OFF
GO
USE [Bakery]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Bakery]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/30/2020 2:18:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[RoleID] [nvarchar](10) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Img] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/30/2020 2:18:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [nvarchar](20) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Total] [float] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[PaymentId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/30/2020 2:18:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [nvarchar](20) NOT NULL,
	[ProId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/30/2020 2:18:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProId] [nvarchar](20) NOT NULL,
	[ProName] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[ImgUrl] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin1', N'1', N'admin', N'Chu Nguyen Linh', CAST(N'1995-12-17' AS Date), N'229 Luy Ban Bich St., Hoa Thanh Ward', N'denton@sbcglobal.net', N'face2.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin2', N'2', N'admin', N'Pham Duc Hoang', CAST(N'1997-12-21' AS Date), N'106A Nguyen Dinh Chieu, Dakao Ward, Dist.1', N'iamcal@verizon.net', N'face3.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin3', N'3', N'admin', N'Pham Duc Linh', CAST(N'1999-12-21' AS Date), N'Floor 6, 8 Nguyen Hue, Ben Nghe Ward', N'sthomas@msn.com', N'face4.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin4', N'4', N'admin', N'Ngo Vu Kha Minh', CAST(N'1990-12-28' AS Date), N'420 Nguyen An Ninh', N'jaarnial@icloud.com', N'face1.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user1', N'1', N'user', N'Bui Pham Minh Nha', CAST(N'1990-05-16' AS Date), N'8 Hoang Van Thu Street', N'portscan@optonline.net', N'face5.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user2', N'2', N'user', N'Ayomide Gibbons', CAST(N'1997-12-25' AS Date), N'114 Nguyen Phi Khanh Street, Tan Dinh Ward, District 1', N'amcuri@me.com', N'face6.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user3', N'3', N'user', N'Cienna Hurst', CAST(N'1986-12-17' AS Date), N'409 Anderson St', N'mhanoh@gmail.com', N'face7.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user4', N'4', N'user', N'Akshay Roach', CAST(N'1979-02-05' AS Date), N'461 Shelton St', N'alastair@hotmail.com', N'face8.jpg')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'194DAWJG', CAST(N'2020-07-29' AS Date), N'user1', N'Processing', 160610, N'16 N2 Khang Điền / Võ Chí Công / Quận 9', N'COD')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'70AOL9C4', CAST(N'2019-12-19' AS Date), N'user1', N'Processing', 528010, N'Address Test', N'Visa')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'A9YHHNFE', CAST(N'2019-12-19' AS Date), N'user1', N'Delivered', 355425.5, N'Address Test', N'Visa')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-01', CAST(N'2019-12-15' AS Date), N'user1', N'Processing', 40000, N'Dist. 9, HCMC', N'Paypal')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-02', CAST(N'2019-12-14' AS Date), N'user2', N'Processing', 12341, N'Dist. 5, HCMC', N'COD')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-03', CAST(N'2019-12-14' AS Date), N'user3', N'Processing', 46000, N'Dist. 1, HCMC', N'Visa')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'194DAWJG', N'Pro-01', 4, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'194DAWJG', N'Pro-06', 2, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'194DAWJG', N'Pro-19', 2, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'70AOL9C4', N'Pro-03', 16, N'Delivered')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'A9YHHNFE', N'Pro-06', 5, N'Delivered')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-01', N'Pro-01', 11, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-01', N'Pro-02', 100, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-02', N'Pro-05', 12, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-03', N'Pro-07', 5, N'Processing1')
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-01', N'Neapolitan Pizza', 150000, N'Available', N'img/piz-1.jpg', N'Neapolitan is the original pizza. This delicious pie dates all the way back to 18th century in Naples, Italy. During this time, the poorer citizens of this seaside city frequently purchased food that was cheap and could be eaten quickly. Luckily for them, Neapolitan pizza was affordable and readily available through numerous street vendors.', N'Pizza', 46)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-02', N'Chicago Pizza', 250000, N'Available', N'img/piz-2.jpg', N'Chicago pizza, also commonly referred to as deep-dish pizza, gets its name from the city it was invented in. During the early 1900’s, Italian immigrants in the windy city were searching for something similar to the Neapolitan pizza that they knew and loved.', N'Pizza', 100)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-03', N'Ciabatta', 50000, N'Available', N'img/bread-3.jpg', N'Ciabatta (which translates to slipper!) is an Italian bread made with wheat flour, salt, yeast, and water. Though it''s texture and crust vary slightly throughout Italy, the essential ingredients remain the same. Ciabatta is best for sandwiches and paninis, naturally.', N'Bread', 84)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-04', N'Whole Wheat Bread', 55000, N'Available', N'img/bread-4.jpg', N'Unlike white bread, whole-wheat bread is made from flour that uses almost the entire wheat grain—with the bran and germ in tact. This means more nutrients and fiber per slice! This bread is also great for sandwiches or, my personal favorite, egg in a hole.', N'Bread', 20)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-05', N'AMARETTI ', 15000, N'Available', N'img/cookie-1.jpg', N'Amaretti are the original macaroons; the name means bitter almond. The cookies were developed in an Italian monastery during the Renaissance.  Read more at: https://www.thenibble.com/reviews/main/cookies/cookies2/cookie-types.asp', N'Cookie', 56)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-06', N'Benne Wafer', 20000, N'Available', N'img/cookie-2.jpg', N'Benne Wafers are thin, crispy cookies made of toasted sesame and the taste is reminiscent of almond or caramel. The dessert has been a specialty of South Carolina''s Low Country since Colonial times after being brought to the colonies from East Africa.', N'Cookie', 38)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-07', N'Yellow Butter Cake', 300000, N'Available', N'img/cake-1.jpg', N'Many a kid''s birthday party is celebrated with a sheet-cake version of this dessert that''s topped with billows of chocolate frosting and rainbow sprinkles.', N'Cake', 98)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-08', N'Red Velvet Cake', 370000, N'Available', N'img/cake-2.jpg', N'This is a true favorite, especially in the south. Made with either butter or oil, red velvet cake''s color classically comes from the reaction of buttermilk and cocoa powder.', N'Cake', 63)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-10', N'New York-Style Pizza', 350000, N'Available', N'img/piz-3.jpg', N'With its characteristic large, foldable slices and crispy outer crust, New York-style pizza is one of America’s most famous regional pizza types.', N'Pizza', 20)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-11', N'Sicilian Pizza', 150000, N'Available', N'img/piz-4.jpg', N'Sicilian pizza, also known as "sfincione," provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce. This square-cut pizza is served with or without cheese, and often with the cheese underneath the sauce to prevent the pie from becoming soggy.', N'Pizza', 30)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-12', N'Greek Pizza', 270000, N'Available', N'img/piz-5.jpg', N'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza. Greek-style pizza, especially popular in the New England states, features a thick and chewy crust cooked in shallow, oiled pans, resulting in a nearly deep-fried bottom.', N'Pizza', 24)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-13', N'Chocolate Chip Cookie', 28000, N'Available', N'img/cookie-3.jpg', N'Chocolate chip cookies are the classic drop cookies. Though originally made with semisweet chocolate chips, these cookies can be reimagined with milk chocolate, white chocolate, strawberry, butterscotch, etc.', N'Cookie', 56)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-14', N'Fortune Cookie', 30000, N'Available', N'img/cookie-4.jpg', N'Fortune cookies are crisp, sugar cookies made from flour, sugar, vanilla and sesame seed oil, and are most often found thrown into the bottom of your Chinese takeout bag. But it wasn''t actually created in China.', N'Cookie', 80)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-15', N'Chees Fires', 20000, N'Available', N'img/cookie-5.jpg', N'The modern-day fortune cookies were invented in San Francisco by Japanese immigrant Makoto Hagiwara in the late 1890s or early 1900s.', N'Cookie', 80)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-16', N'Sourdough', 65000, N'Available', N'img/bread-1.jpg', N'Sourdough is a yeasted bread made from a starter — a fermented mixture of flour and water that makes many batches of bread. In fact, it can be kept for a VERY long time! The resulting loaf has a substantial crust with a soft, chewy center and large air bubbles.', N'Bread', 25)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-17', N'Rye Bread', 30000, N'Available', N'img/bread-2.jpg', N'Rye bread is made with a combination of bread flour and rye flour, giving it an assertive rye flavor and a tight crumb. Caraway or dill seeds are often added for an earthy flavor.', N'Bread', 88)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-18', N'Flourless Cake', 420000, N'Available', N'img/cake-3.jpg', N'This category includes both baked (think cheese cake or flourless chocolate) or unbaked (like mousse or unbaked cheesecakes) varieties. Typically very rich because of the high fat content, these cakes may or may not have a bottom crumb crust.', N'Cake', 70)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-19', N'Chocolate Cake', 330000, N'Available', N'img/cake-4.jpg', N'The classic version of this butter style cake is traditionally made with pineapple, but can be made with many varieties of fruits, including plums, peaches, blueberries, or pears.', N'Cake', 38)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-20', N'Devil’s Food Cake', 350000, N'Available', N'img/cake-5.jpg', N'This cake is made "devilish" by the addition of chocolate in the form of cocoa powder. Extra baking soda causes the crumb to have more air bubbles, giving it a light and airy texture. This rich cake is frosted with either chocolate frosting or buttercream.', N'Cake', 20)
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProId])
REFERENCES [dbo].[Product] ([ProId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
USE [master]
GO
ALTER DATABASE [Bakery] SET  READ_WRITE 
GO
