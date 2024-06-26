USE [master]
GO
/****** Object:  Database [bpmayorga]    Script Date: 6/6/2024 09:47:28 ******/
CREATE DATABASE [bpmayorga]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bpmayorga', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\bpmayorga.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bpmayorga_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\bpmayorga_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [bpmayorga] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bpmayorga].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bpmayorga] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bpmayorga] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bpmayorga] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bpmayorga] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bpmayorga] SET ARITHABORT OFF 
GO
ALTER DATABASE [bpmayorga] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bpmayorga] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bpmayorga] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bpmayorga] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bpmayorga] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bpmayorga] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bpmayorga] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bpmayorga] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bpmayorga] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bpmayorga] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bpmayorga] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bpmayorga] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bpmayorga] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bpmayorga] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bpmayorga] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bpmayorga] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bpmayorga] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bpmayorga] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bpmayorga] SET  MULTI_USER 
GO
ALTER DATABASE [bpmayorga] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bpmayorga] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bpmayorga] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bpmayorga] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bpmayorga] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bpmayorga] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bpmayorga] SET QUERY_STORE = ON
GO
ALTER DATABASE [bpmayorga] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [bpmayorga]
GO
/****** Object:  Table [dbo].[formato_mensaje]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formato_mensaje](
	[cod_formato] [int] NULL,
	[cod_tipo] [int] NULL,
	[cod_tipo_informacion] [int] NULL,
	[nombre] [varchar](50) NULL,
	[remitente] [varchar](50) NULL,
	[asunto] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mensaje]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mensaje](
	[cod_mensaje] [int] NULL,
	[cod_formato] [int] NULL,
	[proyecto] [varchar](50) NULL,
	[producto] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id] [int] NULL,
	[descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proyecto]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proyecto](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proyecto_producto]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proyecto_producto](
	[id] [int] NULL,
	[producto] [varchar](50) NULL,
	[id_proyecto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_informacion]    Script Date: 6/6/2024 09:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_informacion](
	[cod_tipo_informacion] [int] NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bpmayorga] SET  READ_WRITE 
GO
