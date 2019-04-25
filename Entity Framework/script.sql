USE [master]
GO
/****** Object:  Database [Employees]    Script Date: 4/25/2019 2:45:03 PM ******/
CREATE DATABASE [Employees]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employees', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Employees.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Employees_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Employees_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Employees] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employees].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employees] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employees] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employees] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employees] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employees] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employees] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Employees] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employees] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employees] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employees] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employees] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employees] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employees] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employees] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employees] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Employees] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employees] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employees] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employees] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employees] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employees] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employees] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employees] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Employees] SET  MULTI_USER 
GO
ALTER DATABASE [Employees] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employees] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employees] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employees] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Employees] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Employees]
GO
/****** Object:  Table [dbo].[employeeDetailTable]    Script Date: 4/25/2019 2:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeDetailTable](
	[employeeID] [nvarchar](10) NOT NULL,
	[employeeName] [nvarchar](40) NOT NULL,
	[employeeAddress] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_employeeDetailTable] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[employeeDetailTable] ([employeeID], [employeeName], [employeeAddress]) VALUES (N'3', N'aaaa', N'asdad')
USE [master]
GO
ALTER DATABASE [Employees] SET  READ_WRITE 
GO
