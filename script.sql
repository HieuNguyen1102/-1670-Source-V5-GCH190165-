USE [master]
GO
/****** Object:  Database [1670AsmtVer4]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE DATABASE [1670AsmtVer4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'1670AsmtVer4', FILENAME = N'C:\Users\Admin\1670AsmtVer4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'1670AsmtVer4_log', FILENAME = N'C:\Users\Admin\1670AsmtVer4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [1670AsmtVer4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [1670AsmtVer4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [1670AsmtVer4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET ARITHABORT OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [1670AsmtVer4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [1670AsmtVer4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [1670AsmtVer4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [1670AsmtVer4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [1670AsmtVer4] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [1670AsmtVer4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [1670AsmtVer4] SET  MULTI_USER 
GO
ALTER DATABASE [1670AsmtVer4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [1670AsmtVer4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [1670AsmtVer4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [1670AsmtVer4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [1670AsmtVer4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [1670AsmtVer4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [1670AsmtVer4] SET QUERY_STORE = OFF
GO
USE [1670AsmtVer4]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[CategoryPhoto] [nvarchar](300) NULL,
	[CategoryOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/28/2023 1:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ProductPrice] [decimal](8, 2) NULL,
	[ProductDiscount] [decimal](2, 2) NULL,
	[ProductPhoto] [nvarchar](3000) NULL,
	[IsTrending] [bit] NOT NULL,
	[IsArrived] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219083222_initial', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231227092241_CreateOrderTable', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231227124551_AddOrderEntities', N'6.0.23')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AD', N'ADMIN', N'ADMIN', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'USER', N'USER', N'USER', N'USER')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c9c0609a-87b8-4b9b-a44a-5bab8dd02d3e', N'AD')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e1725c31-1191-4708-bfe0-df6822de166a', N'USER')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'88e9bca3-6259-444d-b19c-58c846cb09c1', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKmSVHBoa8PZOInhGWNt90GBbJ6Ie8laAPt/0/95KuOhmjW0mi+tHAo2pb+jKuN4hA==', N'635O6XFNFMPBMYRJCQGUVAVCJ2KXCV5N', N'e4dd4a39-d13a-4fa8-9efc-9660becde4bd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c9c0609a-87b8-4b9b-a44a-5bab8dd02d3e', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENYmFSD0Ev3MfaQ8SOEM5pB6GWnYP0EXOOdiHn+RiTWAGdXrOS+kCbrVEDoBZiNV7Q==', N'AK3WPCJ3EAB75N7GOQLC5ORASEPIYS4Q', N'1abbefc0-9d8c-42ec-9c0a-10f58cdb7508', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e1725c31-1191-4708-bfe0-df6822de166a', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMWnrR9UphF9RsvLrDEhe+U5tMsUhQTbIODTz95OGJN5CdR6xIieQ++XMNozgSUftw==', N'4HTZDOKW2DKPHAD4QBKZHAQ3HIOAK47I', N'a5fd715d-351c-4374-b5c2-29630a9944f0', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (1, N'History', N'/img/book-genre.jpg', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (2, N'Math', N'/img/book-genre.jpg', 2)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (3, N'Fiction', N'/img/FictionBookCategory.jpg', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (6, N'History', N'/img/book-genre.jpg', 6)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (10, N'ASDASDASD', NULL, 4)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([OrderItemId], [ProductId], [Quantity], [UnitPrice], [OrderId]) VALUES (1, 7, 1, CAST(98.40 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderItem] ([OrderItemId], [ProductId], [Quantity], [UnitPrice], [OrderId]) VALUES (2, 19, 2, CAST(11.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderItem] ([OrderItemId], [ProductId], [Quantity], [UnitPrice], [OrderId]) VALUES (3, 14, 1, CAST(55.50 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderItem] ([OrderItemId], [ProductId], [Quantity], [UnitPrice], [OrderId]) VALUES (4, 19, 1, CAST(11.00 AS Decimal(18, 2)), 3)
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [UserId], [TotalAmount]) VALUES (1, N'88e9bca3-6259-444d-b19c-58c846cb09c1', CAST(98.40 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [UserId], [TotalAmount]) VALUES (2, N'e1725c31-1191-4708-bfe0-df6822de166a', CAST(77.50 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [UserId], [TotalAmount]) VALUES (3, N'e1725c31-1191-4708-bfe0-df6822de166a', CAST(11.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (1, N'Product 1 ', N'P1 Description', 6, CAST(333.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (3, N'Product 2 ', N'asd', 2, CAST(123.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (4, N'Product 4', N'zz', 1, CAST(99.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (5, N'Product 5 ', N'ddd', 2, CAST(1000.00 AS Decimal(8, 2)), CAST(0.70 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (6, N'Product 6 ', N'P1 Description', 3, CAST(55.00 AS Decimal(8, 2)), CAST(0.10 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (7, N'Product 7 ', N'P1 Description', 3, CAST(123.00 AS Decimal(8, 2)), CAST(0.20 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (9, N'Product 9 ', N'P1 Description', 2, CAST(555.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (14, N'Product 35 ', N'asassssss', 2, CAST(111.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (15, N'Product 75 ', N'P1 Description', 1, CAST(1000.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 0, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (16, N'Product 66 ', N'asdfasdf', 2, CAST(55.00 AS Decimal(8, 2)), CAST(0.70 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (19, N'Product 1 ', N'asdfasd', 2, CAST(22.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (20, N'Product 1 ', N'jjjj', 2, CAST(1000.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/Number-of-Books-Published-Per-Year.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [IsTrending], [IsArrived]) VALUES (106, N'The Little Book Of History', N'I don''t know ', 1, CAST(999.00 AS Decimal(8, 2)), CAST(0.20 AS Decimal(2, 2)), N'/img/Thelittlebookofhistory.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItem_OrderId]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItem_OrderId] ON [dbo].[OrderItem]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 12/28/2023 1:19:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Orders_OrderId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [1670AsmtVer4] SET  READ_WRITE 
GO
