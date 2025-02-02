USE [master]
GO
/****** Object:  Database [QL_NhanSuN]    Script Date: 15/07/2024 09:54:04 ******/
CREATE DATABASE [QL_NhanSuN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_NhanSuN_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QL_NhanSuN.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_NhanSuN_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QL_NhanSuN.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_NhanSuN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_NhanSuN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_NhanSuN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_NhanSuN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_NhanSuN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_NhanSuN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_NhanSuN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_NhanSuN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_NhanSuN] SET  MULTI_USER 
GO
ALTER DATABASE [QL_NhanSuN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_NhanSuN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_NhanSuN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_NhanSuN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_NhanSuN', N'ON'
GO
USE [QL_NhanSuN]
GO
/****** Object:  Table [dbo].[tbl_Deparment]    Script Date: 15/07/2024 09:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Deparment](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Deparment] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 15/07/2024 09:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](3) NULL,
	[City] [nvarchar](20) NULL,
	[Image] [nchar](20) NULL,
	[DeptId] [int] NULL,
 CONSTRAINT [PK_tbl_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Deparment] ON 

INSERT [dbo].[tbl_Deparment] ([DeptId], [Name]) VALUES (1, N'Khoa CNTT')
INSERT [dbo].[tbl_Deparment] ([DeptId], [Name]) VALUES (2, N'Khoa Ngoại Ngữ')
INSERT [dbo].[tbl_Deparment] ([DeptId], [Name]) VALUES (3, N'Khoa Tài Chính')
INSERT [dbo].[tbl_Deparment] ([DeptId], [Name]) VALUES (4, N'Khoa Thực Phẩm')
INSERT [dbo].[tbl_Deparment] ([DeptId], [Name]) VALUES (5, N'Phòng Đào Tạo')
INSERT [dbo].[tbl_Deparment] ([DeptId], [Name]) VALUES (6, N'Phòng ABCDEFGH')
SET IDENTITY_INSERT [dbo].[tbl_Deparment] OFF
SET IDENTITY_INSERT [dbo].[tbl_Employee] ON 

INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (1, N'Nguyễn Hải Yến', N'Nữ', N'Đà Lạt', N'NV1.jpg             ', 1)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (2, N'Trương Mạnh Hùng', N'Nam', N'TP.HCM', N'NV2.jpg             ', 1)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (3, N'Đinh Duy Minh', N'Nam', N'Thái Bình', N'NV1.jpg             ', 2)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (4, N'Ngô Thị Nguyệt', N'Nữ', N'Long An', N'NV2.jpg             ', 2)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (5, N'Đào Minh Châu', N'Nữ', N'Bạc Liêu', N'NV1.jpg             ', 3)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (14, N'Phan Thị Ngọc Mai', N'Nữ', N'Bến Tre', N'NV2.jpg             ', 3)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (15, N'Trương Nguyễn Quỳnh Anh', N'Nữ', N'TP.HCM', N'NV1.jpg             ', 4)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (16, N'Lê Thanh Liêm', N'Nam', N'TP.HCM', N'NV2.jpg             ', 4)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (19, N'Nguyễn Thị Thanh Thúy', N'Nữ', N'Long An', N'NV3.JPG             ', 5)
INSERT [dbo].[tbl_Employee] ([Id], [Name], [Gender], [City], [Image], [DeptId]) VALUES (20, N'Bùi Văn Cáp', N'Nam', N'Tp.HCM', N'NV2.JPG             ', 2)
SET IDENTITY_INSERT [dbo].[tbl_Employee] OFF
ALTER TABLE [dbo].[tbl_Employee]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Employee_tbl_Deparment] FOREIGN KEY([DeptId])
REFERENCES [dbo].[tbl_Deparment] ([DeptId])
GO
ALTER TABLE [dbo].[tbl_Employee] CHECK CONSTRAINT [FK_tbl_Employee_tbl_Deparment]
GO
USE [master]
GO
ALTER DATABASE [QL_NhanSuN] SET  READ_WRITE 
GO
