USE [master]
GO
/****** Object:  Database [BEEPHONE]    Script Date: 11/16/2022 10:24:47 PM ******/
CREATE DATABASE [BEEPHONE]
 
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BEEPHONE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BEEPHONE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BEEPHONE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BEEPHONE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BEEPHONE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BEEPHONE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BEEPHONE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BEEPHONE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BEEPHONE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BEEPHONE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BEEPHONE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BEEPHONE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BEEPHONE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BEEPHONE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BEEPHONE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BEEPHONE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BEEPHONE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BEEPHONE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BEEPHONE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BEEPHONE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BEEPHONE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BEEPHONE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BEEPHONE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BEEPHONE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BEEPHONE] SET  MULTI_USER 
GO
ALTER DATABASE [BEEPHONE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BEEPHONE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BEEPHONE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BEEPHONE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BEEPHONE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BEEPHONE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BEEPHONE] SET QUERY_STORE = OFF
GO
USE [BEEPHONE]
GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[id] [uniqueidentifier] NOT NULL,
	[thoi_gian] [int] NULL,
	[don_vi] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDienThoai]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDienThoai](
	[IMEI] [nvarchar](20) NOT NULL,
	[id_mau_Dong] [uniqueidentifier] NULL,
	[id_quoc_gia_Dong] [uniqueidentifier] NULL,
	[trang_thai] [bit] NULL,
	[moi] [int] NULL,
	[mo_ta] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IMEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[id] [uniqueidentifier] NOT NULL,
	[ma_chuc_vu] [nvarchar](10) NULL,
	[ten_chuc_vu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[id] [uniqueidentifier] NOT NULL,
	[ma_dien_thoai] [nvarchar](50) NULL,
	[ten_dien_thoai] [nvarchar](50) NULL,
	[id_hang] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dong]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dong](
	[id] [uniqueidentifier] NOT NULL,
	[ma_dong] [nvarchar](50) NULL,
	[ten_dong] [nvarchar](50) NULL,
	[id_dien_thoai] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[id] [uniqueidentifier] NOT NULL,
	[ma_hang] [nvarchar](50) NULL,
	[ten_hang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id] [uniqueidentifier] NOT NULL,
	[ma_hoa_don] [nvarchar](10) NULL,
	[ngay_tao] [datetime] NULL,
	[id_nhan_vien] [uniqueidentifier] NULL,
	[id_khach_hang] [uniqueidentifier] NULL,
	[id_khuyen_mai] [uniqueidentifier] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[id] [uniqueidentifier] NOT NULL,
	[IMEI] [nvarchar](20) NULL,
	[id_hoa_don] [uniqueidentifier] NULL,
	[id_bao_hanh] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [uniqueidentifier] NOT NULL,
	[ten_khach_hang] [nvarchar](50) NULL,
	[ngay_sinh] [date] NULL,
	[sdt] [nvarchar](13) NULL,
	[email] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[id] [uniqueidentifier] NOT NULL,
	[ma_khuyen_mai] [nvarchar](50) NULL,
	[ngay_bat_dau] [datetime] NULL,
	[ngay_ket_thuc] [datetime] NULL,
	[gia_giam] [float] NULL,
	[don_vi] [bit] NULL,
	[mo_ta] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[id] [uniqueidentifier] NOT NULL,
	[ten_mau] [nvarchar](50) NULL,
	[ma_mau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSacDong]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSacDong](
	[id] [uniqueidentifier] NOT NULL,
	[id_dong] [uniqueidentifier] NULL,
	[id_mau_sac] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id] [uniqueidentifier] NOT NULL,
	[ma_nhan_vien] [nvarchar](10) NULL,
	[ten_nhan_vien] [nvarchar](50) NULL,
	[id_chuc_vu] [uniqueidentifier] NULL,
	[ngay_sinh] [date] NULL,
	[sdt] [nvarchar](13) NULL,
	[email] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](255) NULL,
	[mat_khau] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[id] [uniqueidentifier] NOT NULL,
	[ma_quoc_gia] [nvarchar](50) NULL,
	[ten_quoc_gia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuocGiaDong]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGiaDong](
	[id] [uniqueidentifier] NOT NULL,
	[id_dong] [uniqueidentifier] NULL,
	[id_quoc_gia] [uniqueidentifier] NULL,
	[ten_hien_thi] [nvarchar](50) NULL,
	[gia_ban] [bigint] NULL,
	[gia_nhap] [bigint] NULL,
 CONSTRAINT [PK__QuocGiaD__3213E83FBA9CB4CA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongSo]    Script Date: 11/16/2022 10:24:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSo](
	[id] [uniqueidentifier] NOT NULL,
	[id_quoc_gia_dong] [uniqueidentifier] NULL,
	[cpu] [nvarchar](50) NULL,
	[ram] [nvarchar](50) NULL,
	[rom] [nvarchar](50) NULL,
	[sim] [nvarchar](50) NULL,
	[man_hinh] [nvarchar](50) NULL,
	[trong_luong] [nvarchar](50) NULL,
	[camera] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoHanh] ([id], [thoi_gian], [don_vi]) VALUES (N'020b9dff-3742-4e6b-bbeb-06f4d1c1fce4', 12, 1)
INSERT [dbo].[BaoHanh] ([id], [thoi_gian], [don_vi]) VALUES (N'05c90112-5a89-4877-be44-0b95d8d65315', 18, 1)
INSERT [dbo].[BaoHanh] ([id], [thoi_gian], [don_vi]) VALUES (N'e6084fca-4cae-4d8e-93ba-2269c75a6cc5', 6, 0)
INSERT [dbo].[BaoHanh] ([id], [thoi_gian], [don_vi]) VALUES (N'90231fe5-ff24-4a18-9aef-48c0d1fc6bc6', 24, 1)
INSERT [dbo].[BaoHanh] ([id], [thoi_gian], [don_vi]) VALUES (N'c39382de-fe00-4387-b7a2-b8ec3348bf91', 6, 1)
INSERT [dbo].[BaoHanh] ([id], [thoi_gian], [don_vi]) VALUES (N'51339112-36f7-47aa-b9a2-d52e1b8d2ef8', 30, 0)
GO
INSERT [dbo].[ChiTietDienThoai] ([IMEI], [id_mau_Dong], [id_quoc_gia_Dong], [trang_thai], [moi], [mo_ta]) VALUES (N'0909991281238', N'2cadea35-1f66-48ab-b2f4-7f2d128c7e7a', N'f7fbd325-d410-4be1-af10-0e0ba349473f', 1, 100, N'máy mới')
INSERT [dbo].[ChiTietDienThoai] ([IMEI], [id_mau_Dong], [id_quoc_gia_Dong], [trang_thai], [moi], [mo_ta]) VALUES (N'09099912812382', N'f82843cc-0e16-4d37-8d4c-a21c1c096526', N'1249db6a-81fe-498f-9673-7ad8cc727d57', 1, 99, NULL)
INSERT [dbo].[ChiTietDienThoai] ([IMEI], [id_mau_Dong], [id_quoc_gia_Dong], [trang_thai], [moi], [mo_ta]) VALUES (N'1241241136t', N'2cadea35-1f66-48ab-b2f4-7f2d128c7e7a', N'f7fbd325-d410-4be1-af10-0e0ba349473f', 1, 100, NULL)
INSERT [dbo].[ChiTietDienThoai] ([IMEI], [id_mau_Dong], [id_quoc_gia_Dong], [trang_thai], [moi], [mo_ta]) VALUES (N'12434tqwef1234', N'f82843cc-0e16-4d37-8d4c-a21c1c096526', N'f8ba995a-6986-45e7-ba58-7c99a8f56cd2', 0, 100, N'máy dành cho công việc')
INSERT [dbo].[ChiTietDienThoai] ([IMEI], [id_mau_Dong], [id_quoc_gia_Dong], [trang_thai], [moi], [mo_ta]) VALUES (N'4fg424324tt444', N'fc590b30-9539-4e6e-8e0f-bc7a8023bf39', N'b7c9fabe-214a-4724-a246-db772efc9a62', 1, 90, N'máy này chiến')
GO
INSERT [dbo].[ChucVu] ([id], [ma_chuc_vu], [ten_chuc_vu]) VALUES (N'424af040-593a-443e-b706-0cd85003d290', N'CV02', N'Bảo vệ')
INSERT [dbo].[ChucVu] ([id], [ma_chuc_vu], [ten_chuc_vu]) VALUES (N'f8645b2b-f3e0-41a2-b9e6-21257febefc7', N'CV01', N'Nhân viên')
INSERT [dbo].[ChucVu] ([id], [ma_chuc_vu], [ten_chuc_vu]) VALUES (N'a843dcd8-9eb3-448f-8b79-7ac4f49b5fb5', N'CV00', N'Quản lý')
GO
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'67a86fa8-848e-4a63-ac7a-05edce931486', N'DT06', N'XIAOMI 6', N'e1e2ef65-5ef2-4d63-be0e-668cf28d4119')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'0ad16373-07fa-49f7-826c-330068d36235', N'DT04', N'XIAOMI 10', N'e1e2ef65-5ef2-4d63-be0e-668cf28d4119')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'8491ec0b-7f1c-457e-a0c1-389bf37b4a68', N'DT01', N'IPHONE 12', N'2d16ea94-8dd8-40a0-8c94-49fa19bc0f32')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'b88552d5-fa11-4882-bbf6-6657bc54bc4d', N'DT08', N'S21', N'b4427dd9-0c53-43e0-a90d-e501e034ed38')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'b65adf95-9141-47b3-8929-725a77666edb', N'DT05', N'MI 4', N'e1e2ef65-5ef2-4d63-be0e-668cf28d4119')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'78c6cb7b-e627-41fa-afa4-74857a0f4f79', N'DT00', N'IPHONE 14', N'2d16ea94-8dd8-40a0-8c94-49fa19bc0f32')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'16af3df1-548f-4ef4-8c0a-8a76f77aed4d', N'DT07', N'S22', N'b4427dd9-0c53-43e0-a90d-e501e034ed38')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'cc5ecd9c-dd79-4ff5-a110-ab34772c44c3', N'DT09', N'S20', N'b4427dd9-0c53-43e0-a90d-e501e034ed38')
INSERT [dbo].[DienThoai] ([id], [ma_dien_thoai], [ten_dien_thoai], [id_hang]) VALUES (N'e55473bf-ebc3-4b83-9452-f7d1d23de62f', N'DT03', N'IPHONE 13', N'2d16ea94-8dd8-40a0-8c94-49fa19bc0f32')
GO
INSERT [dbo].[Dong] ([id], [ma_dong], [ten_dong], [id_dien_thoai]) VALUES (N'70b3d3b3-a020-47b1-909a-06fceb97af84', N'D004', N'UNTRA', N'78c6cb7b-e627-41fa-afa4-74857a0f4f79')
INSERT [dbo].[Dong] ([id], [ma_dong], [ten_dong], [id_dien_thoai]) VALUES (N'03926a5d-4f25-4458-9474-8ed20f9d1eb6', N'D001', N'PLUS', N'67a86fa8-848e-4a63-ac7a-05edce931486')
INSERT [dbo].[Dong] ([id], [ma_dong], [ten_dong], [id_dien_thoai]) VALUES (N'b1c87754-5347-41bf-ad66-917825943489', N'D002', N'UNTRA', N'16af3df1-548f-4ef4-8c0a-8a76f77aed4d')
INSERT [dbo].[Dong] ([id], [ma_dong], [ten_dong], [id_dien_thoai]) VALUES (N'd75d30d9-ad0d-4bd7-888b-93d301070c35', N'D005', N'', N'e55473bf-ebc3-4b83-9452-f7d1d23de62f')
INSERT [dbo].[Dong] ([id], [ma_dong], [ten_dong], [id_dien_thoai]) VALUES (N'5fdac658-72bb-49ce-9dac-ae108ce1e246', N'D003', N'PRO', N'78c6cb7b-e627-41fa-afa4-74857a0f4f79')
INSERT [dbo].[Dong] ([id], [ma_dong], [ten_dong], [id_dien_thoai]) VALUES (N'581480c4-ce6d-4546-b441-ebd8e7f5feeb', N'D000', N'PRO', N'67a86fa8-848e-4a63-ac7a-05edce931486')
GO
INSERT [dbo].[Hang] ([id], [ma_hang], [ten_hang]) VALUES (N'2d16ea94-8dd8-40a0-8c94-49fa19bc0f32', N'H00', N'APPLE')
INSERT [dbo].[Hang] ([id], [ma_hang], [ten_hang]) VALUES (N'e1e2ef65-5ef2-4d63-be0e-668cf28d4119', N'H02', N'XIAOMI')
INSERT [dbo].[Hang] ([id], [ma_hang], [ten_hang]) VALUES (N'b4427dd9-0c53-43e0-a90d-e501e034ed38', N'H01', N'SAMSUNG')
GO
INSERT [dbo].[HoaDon] ([id], [ma_hoa_don], [ngay_tao], [id_nhan_vien], [id_khach_hang], [id_khuyen_mai], [mo_ta], [trang_thai]) VALUES (N'c0026347-c236-4b5b-8f8c-a3c2ba28cab1', N'HD001', CAST(N'2022-11-11T00:00:00.000' AS DateTime), N'1dfdea6a-3a0d-4f91-a392-06866f565306', N'b96c3aff-2e03-4790-9ebe-7fc60c397e30', N'c87d7c94-fafe-4d7a-80c1-5989df3231dd', NULL, 1)
INSERT [dbo].[HoaDon] ([id], [ma_hoa_don], [ngay_tao], [id_nhan_vien], [id_khach_hang], [id_khuyen_mai], [mo_ta], [trang_thai]) VALUES (N'09fa1257-6103-4271-b179-d99873a31797', N'HD000', CAST(N'2022-12-11T00:00:00.000' AS DateTime), N'ee34c6f0-4599-489b-b3a2-7bcf9b6c0fa1', N'b6d42d0f-f9f2-4c0f-a5d0-f66c0eb8302c', NULL, NULL, 0)
GO
INSERT [dbo].[HoaDonChiTiet] ([id], [IMEI], [id_hoa_don], [id_bao_hanh]) VALUES (N'b1ae3ae4-3f52-4cbd-8d05-08777cc804d5', N'0909991281238', N'c0026347-c236-4b5b-8f8c-a3c2ba28cab1', N'020b9dff-3742-4e6b-bbeb-06f4d1c1fce4')
INSERT [dbo].[HoaDonChiTiet] ([id], [IMEI], [id_hoa_don], [id_bao_hanh]) VALUES (N'dd3f5684-aa52-4901-be87-209845b3a3ef', N'09099912812382', N'c0026347-c236-4b5b-8f8c-a3c2ba28cab1', N'020b9dff-3742-4e6b-bbeb-06f4d1c1fce4')
INSERT [dbo].[HoaDonChiTiet] ([id], [IMEI], [id_hoa_don], [id_bao_hanh]) VALUES (N'eeb7c9c9-e1e2-4fda-9948-99a1c1b79ae1', N'4fg424324tt444', N'09fa1257-6103-4271-b179-d99873a31797', N'90231fe5-ff24-4a18-9aef-48c0d1fc6bc6')
GO
INSERT [dbo].[KhachHang] ([id], [ten_khach_hang], [ngay_sinh], [sdt], [email], [dia_chi]) VALUES (N'b96c3aff-2e03-4790-9ebe-7fc60c397e30', N'Nguyễn Hùng Nam', CAST(N'2000-12-03' AS Date), N'90901293113', NULL, N'67 Ngô Quyền, xóm 10')
INSERT [dbo].[KhachHang] ([id], [ten_khach_hang], [ngay_sinh], [sdt], [email], [dia_chi]) VALUES (N'b6d42d0f-f9f2-4c0f-a5d0-f66c0eb8302c', N'Trần Thanh Tâm', CAST(N'2002-01-01' AS Date), N'0909234123', NULL, N'21 thái hà, Hà nội')
GO
INSERT [dbo].[KhuyenMai] ([id], [ma_khuyen_mai], [ngay_bat_dau], [ngay_ket_thuc], [gia_giam], [don_vi], [mo_ta]) VALUES (N'c87d7c94-fafe-4d7a-80c1-5989df3231dd', N'KM002', CAST(N'2022-09-22T00:00:00.000' AS DateTime), CAST(N'2022-09-30T00:00:00.000' AS DateTime), 800000, 1, N'GIẢM 800K KHI THANH TOÁN TRỰC TIẾP')
INSERT [dbo].[KhuyenMai] ([id], [ma_khuyen_mai], [ngay_bat_dau], [ngay_ket_thuc], [gia_giam], [don_vi], [mo_ta]) VALUES (N'595d6732-b778-4321-ad3f-7acc27e17cc7', N'KM000', CAST(N'2022-12-11T00:00:00.000' AS DateTime), CAST(N'2022-12-13T00:00:00.000' AS DateTime), 100000, 1, N'giảm 100k mỗi khi mua sản phẩm')
INSERT [dbo].[KhuyenMai] ([id], [ma_khuyen_mai], [ngay_bat_dau], [ngay_ket_thuc], [gia_giam], [don_vi], [mo_ta]) VALUES (N'db0c7642-22b6-418c-af49-9b55ebacb7c4', N'KM001', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-01-02T00:00:00.000' AS DateTime), 12, 0, N'giảm 12% mỗi khi đẹp trai')
GO
INSERT [dbo].[MauSac] ([id], [ten_mau], [ma_mau]) VALUES (N'2ba03003-216f-427c-af85-2dfc9c0993d6', N'Vàng', N'GOLD')
INSERT [dbo].[MauSac] ([id], [ten_mau], [ma_mau]) VALUES (N'e2668316-e5ec-4b6d-8190-6e5c174eba41', N'Vàng', N'YELLOW')
INSERT [dbo].[MauSac] ([id], [ten_mau], [ma_mau]) VALUES (N'dfd72378-2bcb-4b6f-a918-7bcb2ae966d3', N'Đỏ', N'RED')
INSERT [dbo].[MauSac] ([id], [ten_mau], [ma_mau]) VALUES (N'16ca8288-4a6e-4173-bc29-e2efda205875', N'Xanh', N'BLUE')
GO
INSERT [dbo].[MauSacDong] ([id], [id_dong], [id_mau_sac]) VALUES (N'2cadea35-1f66-48ab-b2f4-7f2d128c7e7a', N'03926a5d-4f25-4458-9474-8ed20f9d1eb6', N'2ba03003-216f-427c-af85-2dfc9c0993d6')
INSERT [dbo].[MauSacDong] ([id], [id_dong], [id_mau_sac]) VALUES (N'f82843cc-0e16-4d37-8d4c-a21c1c096526', N'70b3d3b3-a020-47b1-909a-06fceb97af84', N'2ba03003-216f-427c-af85-2dfc9c0993d6')
INSERT [dbo].[MauSacDong] ([id], [id_dong], [id_mau_sac]) VALUES (N'5b6420b2-8c4a-4889-839f-a7f433c70216', N'b1c87754-5347-41bf-ad66-917825943489', N'dfd72378-2bcb-4b6f-a918-7bcb2ae966d3')
INSERT [dbo].[MauSacDong] ([id], [id_dong], [id_mau_sac]) VALUES (N'fc590b30-9539-4e6e-8e0f-bc7a8023bf39', N'b1c87754-5347-41bf-ad66-917825943489', N'dfd72378-2bcb-4b6f-a918-7bcb2ae966d3')
INSERT [dbo].[MauSacDong] ([id], [id_dong], [id_mau_sac]) VALUES (N'40b5c96f-816c-4151-aafa-bf95a50ad9d6', N'70b3d3b3-a020-47b1-909a-06fceb97af84', N'2ba03003-216f-427c-af85-2dfc9c0993d6')
INSERT [dbo].[MauSacDong] ([id], [id_dong], [id_mau_sac]) VALUES (N'c5c76574-57b3-4e6a-9c14-e8bfa5a7597b', N'd75d30d9-ad0d-4bd7-888b-93d301070c35', N'e2668316-e5ec-4b6d-8190-6e5c174eba41')
GO
INSERT [dbo].[NhanVien] ([id], [ma_nhan_vien], [ten_nhan_vien], [id_chuc_vu], [ngay_sinh], [sdt], [email], [dia_chi], [mat_khau]) VALUES (N'1dfdea6a-3a0d-4f91-a392-06866f565306', N'NV002', N'Đỗ Văn Thiệu', N'f8645b2b-f3e0-41a2-b9e6-21257febefc7', CAST(N'2004-04-04' AS Date), N'18907280912', NULL, N'Bắc Giang', N'1234')
INSERT [dbo].[NhanVien] ([id], [ma_nhan_vien], [ten_nhan_vien], [id_chuc_vu], [ngay_sinh], [sdt], [email], [dia_chi], [mat_khau]) VALUES (N'f3932fbf-da07-4c85-b091-42e6fda536d4', N'NV001', N'Buoy Tiến Hùng', N'424af040-593a-443e-b706-0cd85003d290', CAST(N'2003-09-12' AS Date), N'909221813318', NULL, N'Thái Lan', N'1234')
INSERT [dbo].[NhanVien] ([id], [ma_nhan_vien], [ten_nhan_vien], [id_chuc_vu], [ngay_sinh], [sdt], [email], [dia_chi], [mat_khau]) VALUES (N'ee34c6f0-4599-489b-b3a2-7bcf9b6c0fa1', N'NV000', N'Trần Tiến Việt', N'a843dcd8-9eb3-448f-8b79-7ac4f49b5fb5', CAST(N'2003-10-11' AS Date), N'0335279376', N'thucthuc44axy@gmail.com', N'Vĩnh Phúc', N'1234')
GO
INSERT [dbo].[QuocGia] ([id], [ma_quoc_gia], [ten_quoc_gia]) VALUES (N'524bb2d1-53f4-4786-b171-366d9ce51dd2', N'UK', N'Anh')
INSERT [dbo].[QuocGia] ([id], [ma_quoc_gia], [ten_quoc_gia]) VALUES (N'972ab7c6-f680-4651-8648-8676360c2be9', N'US', N'Mỹ')
INSERT [dbo].[QuocGia] ([id], [ma_quoc_gia], [ten_quoc_gia]) VALUES (N'e83d58dc-a9fd-4dfc-86cf-9a8180fc2248', N'JP', N'Nhật Bản')
INSERT [dbo].[QuocGia] ([id], [ma_quoc_gia], [ten_quoc_gia]) VALUES (N'e29b6a45-c476-4ee2-9f45-a2b8eb26b6da', N'KR', N'Hàn Quốc')
INSERT [dbo].[QuocGia] ([id], [ma_quoc_gia], [ten_quoc_gia]) VALUES (N'aeba55ea-f9fe-48c4-8625-c73d83ebb344', N'VN', N'Việt Nam')
INSERT [dbo].[QuocGia] ([id], [ma_quoc_gia], [ten_quoc_gia]) VALUES (N'c2bebe9d-9d9c-430a-969f-ecfed39b18e5', N'CN', N'Trung Quốc')
GO
INSERT [dbo].[QuocGiaDong] ([id], [id_dong], [id_quoc_gia], [ten_hien_thi], [gia_ban], [gia_nhap]) VALUES (N'f7fbd325-d410-4be1-af10-0e0ba349473f', N'03926a5d-4f25-4458-9474-8ed20f9d1eb6', N'e83d58dc-a9fd-4dfc-86cf-9a8180fc2248', NULL, NULL, NULL)
INSERT [dbo].[QuocGiaDong] ([id], [id_dong], [id_quoc_gia], [ten_hien_thi], [gia_ban], [gia_nhap]) VALUES (N'27560504-d668-427a-8f60-5585c5d0937d', N'70b3d3b3-a020-47b1-909a-06fceb97af84', N'972ab7c6-f680-4651-8648-8676360c2be9', NULL, NULL, NULL)
INSERT [dbo].[QuocGiaDong] ([id], [id_dong], [id_quoc_gia], [ten_hien_thi], [gia_ban], [gia_nhap]) VALUES (N'1249db6a-81fe-498f-9673-7ad8cc727d57', N'd75d30d9-ad0d-4bd7-888b-93d301070c35', N'e83d58dc-a9fd-4dfc-86cf-9a8180fc2248', NULL, NULL, NULL)
INSERT [dbo].[QuocGiaDong] ([id], [id_dong], [id_quoc_gia], [ten_hien_thi], [gia_ban], [gia_nhap]) VALUES (N'f8ba995a-6986-45e7-ba58-7c99a8f56cd2', N'b1c87754-5347-41bf-ad66-917825943489', N'c2bebe9d-9d9c-430a-969f-ecfed39b18e5', NULL, NULL, NULL)
INSERT [dbo].[QuocGiaDong] ([id], [id_dong], [id_quoc_gia], [ten_hien_thi], [gia_ban], [gia_nhap]) VALUES (N'8174addf-794f-475b-a426-883c69d83546', N'581480c4-ce6d-4546-b441-ebd8e7f5feeb', N'c2bebe9d-9d9c-430a-969f-ecfed39b18e5', NULL, NULL, NULL)
INSERT [dbo].[QuocGiaDong] ([id], [id_dong], [id_quoc_gia], [ten_hien_thi], [gia_ban], [gia_nhap]) VALUES (N'b7c9fabe-214a-4724-a246-db772efc9a62', N'5fdac658-72bb-49ce-9dac-ae108ce1e246', N'aeba55ea-f9fe-48c4-8625-c73d83ebb344', NULL, NULL, NULL)
GO
INSERT [dbo].[ThongSo] ([id], [id_quoc_gia_dong], [cpu], [ram], [rom], [sim], [man_hinh], [trong_luong], [camera]) VALUES (N'4c0aee42-b5cb-4040-b83f-21a6edf83eab', N'f7fbd325-d410-4be1-af10-0e0ba349473f', N'A13', N'6', N'128', N'2 sim vật lý', N'6,7 inch', N'200 gram', N'3 camera')
INSERT [dbo].[ThongSo] ([id], [id_quoc_gia_dong], [cpu], [ram], [rom], [sim], [man_hinh], [trong_luong], [camera]) VALUES (N'c8fc0d69-bfcd-4dbc-ae42-f8e724bad385', N'f8ba995a-6986-45e7-ba58-7c99a8f56cd2', N'SnapDragon 888+ ', N'12', N'256', N'1 sim', N'6,5 inch', N'198 gram', N'2 camera`')
GO
ALTER TABLE [dbo].[BaoHanh] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[DienThoai] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[Dong] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[Hang] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[MauSacDong] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[QuocGia] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[QuocGiaDong] ADD  CONSTRAINT [DF__QuocGiaDong__id__440B1D61]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ThongSo] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ChiTietDienThoai]  WITH CHECK ADD FOREIGN KEY([id_mau_Dong])
REFERENCES [dbo].[MauSacDong] ([id])
GO
ALTER TABLE [dbo].[ChiTietDienThoai]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDi__id_qu__5535A963] FOREIGN KEY([id_quoc_gia_Dong])
REFERENCES [dbo].[QuocGiaDong] ([id])
GO
ALTER TABLE [dbo].[ChiTietDienThoai] CHECK CONSTRAINT [FK__ChiTietDi__id_qu__5535A963]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD FOREIGN KEY([id_hang])
REFERENCES [dbo].[Hang] ([id])
GO
ALTER TABLE [dbo].[Dong]  WITH CHECK ADD FOREIGN KEY([id_dien_thoai])
REFERENCES [dbo].[DienThoai] ([id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_khuyen_mai])
REFERENCES [dbo].[KhuyenMai] ([id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[NhanVien] ([id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([id_bao_hanh])
REFERENCES [dbo].[BaoHanh] ([id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[HoaDon] ([id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IMEI])
REFERENCES [dbo].[ChiTietDienThoai] ([IMEI])
GO
ALTER TABLE [dbo].[MauSacDong]  WITH CHECK ADD FOREIGN KEY([id_dong])
REFERENCES [dbo].[Dong] ([id])
GO
ALTER TABLE [dbo].[MauSacDong]  WITH CHECK ADD FOREIGN KEY([id_mau_sac])
REFERENCES [dbo].[MauSac] ([id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([id_chuc_vu])
REFERENCES [dbo].[ChucVu] ([id])
GO
ALTER TABLE [dbo].[QuocGiaDong]  WITH CHECK ADD  CONSTRAINT [FK__QuocGiaDo__id_do__44FF419A] FOREIGN KEY([id_dong])
REFERENCES [dbo].[Dong] ([id])
GO
ALTER TABLE [dbo].[QuocGiaDong] CHECK CONSTRAINT [FK__QuocGiaDo__id_do__44FF419A]
GO
ALTER TABLE [dbo].[QuocGiaDong]  WITH CHECK ADD  CONSTRAINT [FK__QuocGiaDo__id_qu__45F365D3] FOREIGN KEY([id_quoc_gia])
REFERENCES [dbo].[QuocGia] ([id])
GO
ALTER TABLE [dbo].[QuocGiaDong] CHECK CONSTRAINT [FK__QuocGiaDo__id_qu__45F365D3]
GO
ALTER TABLE [dbo].[ThongSo]  WITH CHECK ADD  CONSTRAINT [FK__ThongSo__id_quoc__5165187F] FOREIGN KEY([id_quoc_gia_dong])
REFERENCES [dbo].[QuocGiaDong] ([id])
GO
ALTER TABLE [dbo].[ThongSo] CHECK CONSTRAINT [FK__ThongSo__id_quoc__5165187F]
GO
USE [master]
GO
ALTER DATABASE [BEEPHONE] SET  READ_WRITE 
GO
