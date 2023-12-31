USE [Fashion_Store_Management]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 13/11/2023 5:56:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHD] [int] NULL,
	[maSP] [int] NULL,
	[soLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 13/11/2023 5:56:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[ngayLapHD] [nvarchar](255) NULL,
	[maKH] [int] NULL,
	[maNV] [int] NULL,
	[triGiaHD] [decimal](18, 3) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 13/11/2023 5:56:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[hoTenKH] [nvarchar](255) NULL,
	[sdtKH] [nvarchar](255) NULL,
	[diaChiKH] [nvarchar](255) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13/11/2023 5:56:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] IDENTITY(1,1) NOT NULL,
	[hoTenNV] [nvarchar](255) NULL,
	[gioiTinh] [nvarchar](255) NULL,
	[diaChiNV] [nvarchar](255) NULL,
	[sdtNV] [nvarchar](255) NULL,
	[ngayLV] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 13/11/2023 5:56:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [int] IDENTITY(1,1) NOT NULL,
	[tenSP] [nvarchar](255) NULL,
	[kichCo] [nvarchar](255) NULL,
	[soLuong] [int] NULL,
	[giaNhap] [decimal](18, 3) NULL,
	[giaBan] [decimal](18, 3) NULL,
	[anhSP] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
