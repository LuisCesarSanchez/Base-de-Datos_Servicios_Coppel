USE [master]
GO
/****** Object:  Database [Servicios_Coppel]    Script Date: 02/12/2023 10:21:06 p. m. ******/
CREATE DATABASE [Servicios_Coppel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Servicios_Coppel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Servicios_Coppel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Servicios_Coppel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Servicios_Coppel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Servicios_Coppel] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Servicios_Coppel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Servicios_Coppel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Servicios_Coppel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Servicios_Coppel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Servicios_Coppel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Servicios_Coppel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Servicios_Coppel] SET  MULTI_USER 
GO
ALTER DATABASE [Servicios_Coppel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Servicios_Coppel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Servicios_Coppel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Servicios_Coppel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Servicios_Coppel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Servicios_Coppel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Servicios_Coppel] SET QUERY_STORE = ON
GO
ALTER DATABASE [Servicios_Coppel] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Servicios_Coppel]
GO
/****** Object:  Table [dbo].[Registro_De_Garantias]    Script Date: 02/12/2023 10:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro_De_Garantias](
	[Factura] [varchar](50) NOT NULL,
	[Garantia] [varchar](50) NOT NULL,
	[Incentivos] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro_De_Servicios]    Script Date: 02/12/2023 10:21:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro_De_Servicios](
	[Facturas] [varchar](50) NOT NULL,
	[Servicio] [varchar](50) NOT NULL,
	[Incentivo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Registro_De_Garantias] ([Factura], [Garantia], [Incentivos]) VALUES (N'420920', N'1', N'48')
GO
INSERT [dbo].[Registro_De_Garantias] ([Factura], [Garantia], [Incentivos]) VALUES (N'420940', N'1', N'55')
GO
INSERT [dbo].[Registro_De_Garantias] ([Factura], [Garantia], [Incentivos]) VALUES (N'425945', N'2', N'38')
GO
INSERT [dbo].[Registro_De_Garantias] ([Factura], [Garantia], [Incentivos]) VALUES (N'420925', N'3', N'95')
GO
INSERT [dbo].[Registro_De_Servicios] ([Facturas], [Servicio], [Incentivo]) VALUES (N'420922', N'1', N'72')
GO
INSERT [dbo].[Registro_De_Servicios] ([Facturas], [Servicio], [Incentivo]) VALUES (N'420927', N'1', N'35')
GO
USE [master]
GO
ALTER DATABASE [Servicios_Coppel] SET  READ_WRITE 
GO
