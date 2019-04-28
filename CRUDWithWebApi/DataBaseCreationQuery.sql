USE [master]
GO

/****** Object:  Database [StudentsData]    Script Date: 4/28/2019 6:20:08 PM ******/
CREATE DATABASE [StudentsData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentsData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\StudentsData.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentsData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\StudentsData_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [StudentsData] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentsData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [StudentsData] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [StudentsData] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [StudentsData] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [StudentsData] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [StudentsData] SET ARITHABORT OFF 
GO

ALTER DATABASE [StudentsData] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [StudentsData] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [StudentsData] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [StudentsData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [StudentsData] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [StudentsData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [StudentsData] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [StudentsData] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [StudentsData] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [StudentsData] SET  DISABLE_BROKER 
GO

ALTER DATABASE [StudentsData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [StudentsData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [StudentsData] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [StudentsData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [StudentsData] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [StudentsData] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [StudentsData] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [StudentsData] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [StudentsData] SET  MULTI_USER 
GO

ALTER DATABASE [StudentsData] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [StudentsData] SET DB_CHAINING OFF 
GO

ALTER DATABASE [StudentsData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [StudentsData] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [StudentsData] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [StudentsData] SET  READ_WRITE 
GO

