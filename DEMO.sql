USE [FacilitiesFeedbackManagement_SWP391]
GO
ALTER TABLE [dbo].[tbl_Users] DROP CONSTRAINT [FK_tblUser_RoleID]
GO
ALTER TABLE [dbo].[tbl_Task] DROP CONSTRAINT [FK__tbl_Task__Manage__5EBF139D]
GO
ALTER TABLE [dbo].[tbl_Task] DROP CONSTRAINT [FK__tbl_Task__Feedba__5CD6CB2B]
GO
ALTER TABLE [dbo].[tbl_Task] DROP CONSTRAINT [FK__tbl_Task__Employ__5DCAEF64]
GO
ALTER TABLE [dbo].[tbl_Specialist] DROP CONSTRAINT [FK__tbl_Speci__UserI__52593CB8]
GO
ALTER TABLE [dbo].[tbl_Specialist] DROP CONSTRAINT [FK__tbl_Speci__CateI__534D60F1]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [FK__tbl_Feedb__UserI__4222D4EF]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [FK__tbl_Feedb__Posit__47DBAE45]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [FK__tbl_Feedb__CateI__46E78A0C]
GO
ALTER TABLE [dbo].[tbl_Users] DROP CONSTRAINT [DF__tbl_Users__Statu__3A81B327]
GO
ALTER TABLE [dbo].[tbl_Users] DROP CONSTRAINT [DF__tbl_Users__UserI__398D8EEE]
GO
ALTER TABLE [dbo].[tbl_Task] DROP CONSTRAINT [DF__tbl_Task__Status__60A75C0F]
GO
ALTER TABLE [dbo].[tbl_Task] DROP CONSTRAINT [DF__tbl_Task__Date_T__5FB337D6]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__Notif__49C3F6B7]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__Statu__48CFD27E]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__Respo__45F365D3]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__ImgUR__44FF419A]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__Video__440B1D61]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__Date___4316F928]
GO
ALTER TABLE [dbo].[tbl_Feedback] DROP CONSTRAINT [DF__tbl_Feedb__Feedb__412EB0B6]
GO
/****** Object:  Index [UQ__tbl_User__A9D1053497C877FD]    Script Date: 10/12/2023 7:41:09 PM ******/
ALTER TABLE [dbo].[tbl_Users] DROP CONSTRAINT [UQ__tbl_User__A9D1053497C877FD]
GO
/****** Object:  Index [UQ__tbl_User__1788CCAD174AB4A3]    Script Date: 10/12/2023 7:41:09 PM ******/
ALTER TABLE [dbo].[tbl_Users] DROP CONSTRAINT [UQ__tbl_User__1788CCAD174AB4A3]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Users]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Users]
GO
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_UserRole]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_UserRole]
GO
/****** Object:  Table [dbo].[tbl_Task]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Task]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Task]
GO
/****** Object:  Table [dbo].[tbl_Specialist]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Specialist]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Specialist]
GO
/****** Object:  Table [dbo].[tbl_Location]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Location]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Location]
GO
/****** Object:  Table [dbo].[tbl_Feedback]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Feedback]
GO
/****** Object:  Table [dbo].[tbl_CategoriesProblem]    Script Date: 10/12/2023 7:41:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CategoriesProblem]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CategoriesProblem]
GO
USE [master]
GO
/****** Object:  Database [FacilitiesFeedbackManagement_SWP391]    Script Date: 10/12/2023 7:41:09 PM ******/
DROP DATABASE [FacilitiesFeedbackManagement_SWP391]
GO
/****** Object:  Database [FacilitiesFeedbackManagement_SWP391]    Script Date: 10/12/2023 7:41:09 PM ******/
CREATE DATABASE [FacilitiesFeedbackManagement_SWP391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FacilitiesFeedbackManagement_SWP391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FacilitiesFeedbackManagement_SWP391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FacilitiesFeedbackManagement_SWP391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FacilitiesFeedbackManagement_SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FacilitiesFeedbackManagement_SWP391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ARITHABORT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET RECOVERY FULL 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET  MULTI_USER 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FacilitiesFeedbackManagement_SWP391', N'ON'
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET QUERY_STORE = ON
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
ALTER AUTHORIZATION ON DATABASE::[FacilitiesFeedbackManagement_SWP391] TO [sa]
GO
USE [FacilitiesFeedbackManagement_SWP391]
GO
/****** Object:  Table [dbo].[tbl_CategoriesProblem]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CategoriesProblem](
	[ID] [char](3) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__tbl_Cate__3214EC2739C90B10] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_CategoriesProblem] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tbl_Feedback]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Feedback](
	[FeedbackID] [uniqueidentifier] NOT NULL,
	[UserID] [varchar](36) NOT NULL,
	[Date_time] [datetime] NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[VideoURL] [varchar](150) NULL,
	[ImgURL] [varchar](150) NULL,
	[Response] [nvarchar](100) NULL,
	[CateID] [char](3) NOT NULL,
	[LocationID] [nvarchar](15) NOT NULL,
	[Status] [int] NULL,
	[Notify] [int] NULL,
 CONSTRAINT [Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_Feedback] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tbl_Location]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location](
	[LocationID] [nvarchar](15) NOT NULL,
	[DISABLE] [int] NULL,
 CONSTRAINT [PK__tbl_Posi__70B8202851753999] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_Location] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tbl_Specialist]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Specialist](
	[UserID] [varchar](36) NOT NULL,
	[CateID] [char](3) NOT NULL,
 CONSTRAINT [Specialist_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_Specialist] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tbl_Task]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Task](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackID] [uniqueidentifier] NOT NULL,
	[EmployeeID] [varchar](36) NOT NULL,
	[ManagerID] [varchar](36) NOT NULL,
	[Date_Time] [datetime] NULL,
	[ImgConfirmationURL] [varchar](150) NOT NULL,
	[Note] [nvarchar](300) NULL,
	[Status] [int] NULL,
	[Responsed] [nvarchar](300) NULL,
 CONSTRAINT [PK__tbl_Task__3214EC27ABB4FF31] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_Task] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRole](
	[RoleID] [int] NOT NULL,
	[Description] [varchar](15) NOT NULL,
 CONSTRAINT [PK__tbl_User__8AFACE3A11CCB16F] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_UserRole] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 10/12/2023 7:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserID] [varchar](36) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleID] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tbl_Users] TO  SCHEMA OWNER 
GO
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C01', N'ĐIỆN')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C02', N'NƯỚC')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C03', N'CƠ SỞ VẬT CHẤT')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C04', N'ĐIỀU HÒA')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C05', N'BÌNH LỌC NƯỚC')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C06', N'PHÒNG HỌC')
INSERT [dbo].[tbl_CategoriesProblem] ([ID], [Description]) VALUES (N'C07', N'VỆ SINH')
GO
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'0f0351a6-ebe7-4390-b37f-10f5c6937b77', N'SA165555', CAST(N'2023-10-02T16:09:09.157' AS DateTime), N'Đơn Số 3', N'TAKE 3 TEST', NULL, NULL, NULL, N'C07', N'P.Hall A', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'1431e97d-a567-478d-8458-21829bd423be', N'SE172437', CAST(N'2023-10-02T16:09:09.157' AS DateTime), N'Đơn Số 2', N'TAKE 2 TEST', NULL, NULL, NULL, N'C04', N'P.111', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'a68a8b2e-c933-471f-9369-486be1ac7556', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', CAST(N'2023-10-02T16:09:09.157' AS DateTime), N'Đơn Số 1', N'TAKE 1 TEST', NULL, NULL, NULL, N'C01', N'P.Seminar', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'ff15873e-dc6c-4634-a545-4e161cb6dba6', N'SS183425', CAST(N'2023-10-02T16:09:09.160' AS DateTime), N'Đơn Số 8', N'TAKE 8 TEST', NULL, NULL, NULL, N'C01', N'P.413', 1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'73374f99-961f-46fd-ad89-619f88e290b3', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', CAST(N'2023-10-02T16:09:09.157' AS DateTime), N'Đơn Số 6', N'TAKE 6 TEST', NULL, NULL, NULL, N'C06', N'Sảnh lầu 5_2', 2, 1)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'0f2ad652-39fb-4449-a8d0-73598d19d8b3', N'SS183425', CAST(N'2023-10-02T16:09:09.160' AS DateTime), N'Đơn Từ chối', N'TAKE 5 TEST', NULL, NULL, NULL, N'C04', N'P.413', -1, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'82a236de-40ef-46d6-abd4-8512ba9545b0', N'SA165555', CAST(N'2023-10-02T16:09:09.160' AS DateTime), N'Đơn Hủy', N'TAKE 4 TEST', NULL, NULL, NULL, N'C04', N'P.413', -2, 0)
INSERT [dbo].[tbl_Feedback] ([FeedbackID], [UserID], [Date_time], [Title], [Description], [VideoURL], [ImgURL], [Response], [CateID], [LocationID], [Status], [Notify]) VALUES (N'bdfe7ccc-46d9-433b-b91f-864bef20143f', N'SS183425', CAST(N'2023-10-02T16:09:09.160' AS DateTime), N'Đơn Số 7', N'TAKE 7 TEST', NULL, NULL, NULL, N'C01', N'P.413', 0, 0)
GO
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall A_1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall A_2', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall A_3', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall B_1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall B_2', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Hall B_3', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 401', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 402', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 403', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 404', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 405', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 406', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 407', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 408', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 409', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 410', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 411', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 412', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 413', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 414', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 416', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 601', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 602', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 603', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 604', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 605', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 606', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 606.1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 606.2', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 607', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 608', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 609', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 610', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 611', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 612', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 613', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 614', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 615', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 616', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 617', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 618', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 619', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 620', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 621', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 622', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 623', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH 624', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_606', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_Hall', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_Hall 1', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'NVH_Hall 2', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.001', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.002', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.004', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.005', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.006', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.007', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.008', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.010', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.011', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.012', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.013', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.016', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.020', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.021', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.022', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.023', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.024', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.025', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.030', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.033', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.034', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.035', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.036', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.037', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.039', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.101', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.104', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.105', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.106', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.107', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.108', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.110', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.111', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.112', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.115', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.116', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.117', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.118', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.119', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.121', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.122', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.123', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.124', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.125', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.126', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.127', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.130', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.131', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.132', 0)
GO
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.133', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.134', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.136', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.137', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.203', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.204', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.205', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.206', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.207', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.209', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.211', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.212', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.213', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.214', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.215', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.219', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.220', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.221', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.222', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.223', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.224', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.225', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.226', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.227', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.230', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.231', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.232', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.233', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.234', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.301', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.302', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.303', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.304', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.305', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.310', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.311', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.312', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.313', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.314', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.315', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.404', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.406', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.407', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.408', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.409', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.410', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.412', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.413', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.414', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.415', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.419', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.420', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.421', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.422', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.502', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.503', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.504', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.505', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.601', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.602', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.603', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.604', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.605', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.606', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.607', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.608', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.609', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.616', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.617', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.618', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.619', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Hall A', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Hall B', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Hall C', 1)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.LB01', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.LB02', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.LB13', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Seminar', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'P.Seminar_TV', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Sảnh lầu 5_1', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Sảnh lầu 5_2', 0)
INSERT [dbo].[tbl_Location] ([LocationID], [DISABLE]) VALUES (N'Sảnh lầu 5_3', 0)
GO
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C01')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C02')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'C04')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C01')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C02')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'C06')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C03')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C05')
INSERT [dbo].[tbl_Specialist] ([UserID], [CateID]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'C07')
GO
SET IDENTITY_INSERT [dbo].[tbl_Task] ON 

INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (1, N'0f0351a6-ebe7-4390-b37f-10f5c6937b77', N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'239A36CE-4DDA-4486-AA2E-731065263963', CAST(N'2023-10-06T21:49:04.817' AS DateTime), N'imgURL', NULL, 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (2, N'1431e97d-a567-478d-8458-21829bd423be', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-10-06T21:49:04.817' AS DateTime), N'imgURL', NULL, 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (3, N'a68a8b2e-c933-471f-9369-486be1ac7556', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'239A36CE-4DDA-4486-AA2E-731065263963', CAST(N'2023-10-06T21:49:04.820' AS DateTime), N'imgURL', NULL, 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (4, N'a68a8b2e-c933-471f-9369-486be1ac7556', N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', CAST(N'2023-10-06T21:49:04.820' AS DateTime), N'imgURL', NULL, 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (5, N'ff15873e-dc6c-4634-a545-4e161cb6dba6', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', CAST(N'2023-10-06T21:49:04.820' AS DateTime), N'imgURL', NULL, 0, NULL)
INSERT [dbo].[tbl_Task] ([ID], [FeedbackID], [EmployeeID], [ManagerID], [Date_Time], [ImgConfirmationURL], [Note], [Status], [Responsed]) VALUES (6, N'73374f99-961f-46fd-ad89-619f88e290b3', N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', CAST(N'2023-10-06T21:49:04.820' AS DateTime), N'imgURL', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Task] OFF
GO
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (0, N'Student')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (1, N'Manager')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (2, N'Employee')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (3, N'System Handler')
INSERT [dbo].[tbl_UserRole] ([RoleID], [Description]) VALUES (4, N'Lecturer')
GO
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'03ACF346-2D0E-45AF-908E-7A0157D760A7', N'Trương Tuấn Kiệt', N'kiettt@fe.edu.vn', N'12345', 3, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'239A36CE-4DDA-4486-AA2E-731065263963', N'Nguyễn Thị Kiều Trung', N'trungntk@fe.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'3AB3F7F9-AFF1-483C-8F69-B46D5717FD9F', N'Nguyễn Trần Hồng Phúc', N'phucnthse172426@fpt.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'50EB43FE-030A-4B49-ACF6-05ABB619F18F', N'Nguyễn Trần Phúc', N'phucnt@fe.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'6E0577A1-C34E-4DAC-B2AA-150AEFB2BE72', N'Hoàng Minh Tiến', N'tienhm@fe.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'A642D3F3-B4DF-448B-A198-5E902E6395CE', N'Nguyễn Thế Hoàng', N'hoangnt@fe.edu.vn', N'12345', 2, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'CD1ED5B9-A924-484F-866D-6DD7D7F0318D', N'Nguyễn Lê Gia Bảo', N'baonlg@fe.edu.vn', N'12345', 1, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SA165555', N'Võ Ngọc Ngạn', N'nganvnsa165555@fpt.edu.vn', N'12345', 0, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SE172437', N'Nguyễn Vũ', N'vunse172437@fpt.edu.vn', N'12345', 0, 0)
INSERT [dbo].[tbl_Users] ([UserID], [Username], [Email], [Password], [RoleID], [Status]) VALUES (N'SS183425', N'Nguyễn Nhật Ánh', N'anhnnss183425@fpt.edu.vn', N'12345', 0, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_User__1788CCAD174AB4A3]    Script Date: 10/12/2023 7:41:10 PM ******/
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [UQ__tbl_User__1788CCAD174AB4A3] UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_User__A9D1053497C877FD]    Script Date: 10/12/2023 7:41:10 PM ******/
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [UQ__tbl_User__A9D1053497C877FD] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Feedb__412EB0B6]  DEFAULT (newid()) FOR [FeedbackID]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Date___4316F928]  DEFAULT (getdate()) FOR [Date_time]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Video__440B1D61]  DEFAULT (NULL) FOR [VideoURL]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__ImgUR__44FF419A]  DEFAULT (NULL) FOR [ImgURL]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Respo__45F365D3]  DEFAULT (NULL) FOR [Response]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Statu__48CFD27E]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Feedback] ADD  CONSTRAINT [DF__tbl_Feedb__Notif__49C3F6B7]  DEFAULT ((0)) FOR [Notify]
GO
ALTER TABLE [dbo].[tbl_Task] ADD  CONSTRAINT [DF__tbl_Task__Date_T__5FB337D6]  DEFAULT (getdate()) FOR [Date_Time]
GO
ALTER TABLE [dbo].[tbl_Task] ADD  CONSTRAINT [DF__tbl_Task__Status__60A75C0F]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [DF__tbl_Users__UserI__398D8EEE]  DEFAULT (CONVERT([varchar](36),newid())) FOR [UserID]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  CONSTRAINT [DF__tbl_Users__Statu__3A81B327]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Feedb__CateI__46E78A0C] FOREIGN KEY([CateID])
REFERENCES [dbo].[tbl_CategoriesProblem] ([ID])
GO
ALTER TABLE [dbo].[tbl_Feedback] CHECK CONSTRAINT [FK__tbl_Feedb__CateI__46E78A0C]
GO
ALTER TABLE [dbo].[tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Feedb__Posit__47DBAE45] FOREIGN KEY([LocationID])
REFERENCES [dbo].[tbl_Location] ([LocationID])
GO
ALTER TABLE [dbo].[tbl_Feedback] CHECK CONSTRAINT [FK__tbl_Feedb__Posit__47DBAE45]
GO
ALTER TABLE [dbo].[tbl_Feedback]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Feedb__UserI__4222D4EF] FOREIGN KEY([UserID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Feedback] CHECK CONSTRAINT [FK__tbl_Feedb__UserI__4222D4EF]
GO
ALTER TABLE [dbo].[tbl_Specialist]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Speci__CateI__534D60F1] FOREIGN KEY([CateID])
REFERENCES [dbo].[tbl_CategoriesProblem] ([ID])
GO
ALTER TABLE [dbo].[tbl_Specialist] CHECK CONSTRAINT [FK__tbl_Speci__CateI__534D60F1]
GO
ALTER TABLE [dbo].[tbl_Specialist]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Speci__UserI__52593CB8] FOREIGN KEY([UserID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Specialist] CHECK CONSTRAINT [FK__tbl_Speci__UserI__52593CB8]
GO
ALTER TABLE [dbo].[tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Task__Employ__5DCAEF64] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Task] CHECK CONSTRAINT [FK__tbl_Task__Employ__5DCAEF64]
GO
ALTER TABLE [dbo].[tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Task__Feedba__5CD6CB2B] FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[tbl_Feedback] ([FeedbackID])
GO
ALTER TABLE [dbo].[tbl_Task] CHECK CONSTRAINT [FK__tbl_Task__Feedba__5CD6CB2B]
GO
ALTER TABLE [dbo].[tbl_Task]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Task__Manage__5EBF139D] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[tbl_Users] ([UserID])
GO
ALTER TABLE [dbo].[tbl_Task] CHECK CONSTRAINT [FK__tbl_Task__Manage__5EBF139D]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tbl_UserRole] ([RoleID])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tblUser_RoleID]
GO
USE [master]
GO
ALTER DATABASE [FacilitiesFeedbackManagement_SWP391] SET  READ_WRITE 
GO
