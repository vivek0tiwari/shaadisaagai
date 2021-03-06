USE [master]
GO
/****** Object:  Database [sadisagai]    Script Date: 02/03/2016 23:36:26 ******/
CREATE DATABASE [sadisagai] ON  PRIMARY 
( NAME = N'sadisagai', FILENAME = N'E:\Work\repos\shadisaagai2016\App_Data\sadisagai.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sadisagai_log', FILENAME = N'E:\Work\repos\shadisaagai2016\App_Data\sadisagai_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sadisagai] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sadisagai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sadisagai] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [sadisagai] SET ANSI_NULLS OFF
GO
ALTER DATABASE [sadisagai] SET ANSI_PADDING OFF
GO
ALTER DATABASE [sadisagai] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [sadisagai] SET ARITHABORT OFF
GO
ALTER DATABASE [sadisagai] SET AUTO_CLOSE ON
GO
ALTER DATABASE [sadisagai] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [sadisagai] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [sadisagai] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [sadisagai] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [sadisagai] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [sadisagai] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [sadisagai] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [sadisagai] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [sadisagai] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [sadisagai] SET  DISABLE_BROKER
GO
ALTER DATABASE [sadisagai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [sadisagai] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [sadisagai] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [sadisagai] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [sadisagai] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [sadisagai] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [sadisagai] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [sadisagai] SET  READ_WRITE
GO
ALTER DATABASE [sadisagai] SET RECOVERY SIMPLE
GO
ALTER DATABASE [sadisagai] SET  MULTI_USER
GO
ALTER DATABASE [sadisagai] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [sadisagai] SET DB_CHAINING OFF
GO
USE [sadisagai]
GO
/****** Object:  Table [dbo].[tblEducation_Field]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEducation_Field](
	[Education_Field] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblEducation_Field] PRIMARY KEY CLUSTERED 
(
	[Education_Field] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Administrative Services')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Advertising')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Architecture')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Armed Forces')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Arts')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Commerce')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Computers/IT')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Engineering/Technology')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Fashion')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Finance')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Fine Arts')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Health Sciences')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Home Science')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Law')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Management')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Medicine')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Nursing')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Office Administration')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Science')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Shipping')
INSERT [dbo].[tblEducation_Field] ([Education_Field]) VALUES (N'Travel')
/****** Object:  Table [dbo].[tblEducation]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEducation](
	[Education_Id] [varchar](100) NOT NULL,
	[Education] [varchar](50) NULL,
 CONSTRAINT [PK_tblEducation] PRIMARY KEY CLUSTERED 
(
	[Education_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'ASSDGR', N'Associates degree')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'BCHLR', N'Bachelors')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'DCTR', N'Doctorate')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'DPMA', N'Diploma')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'HGSCHL', N'High school')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'HNRDGR', N'Honours degree')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'LTHGSCHL', N'Less than high school')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'MSTR', N'Masters/Postgraduate')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'TRDSCHL', N'Trade school')
INSERT [dbo].[tblEducation] ([Education_Id], [Education]) VALUES (N'UG', N'Undergraduate')
/****** Object:  Table [dbo].[tblDrink]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDrink](
	[Drink_Id] [varchar](10) NOT NULL,
	[Drink] [varchar](50) NULL,
 CONSTRAINT [PK_tblDrink] PRIMARY KEY CLUSTERED 
(
	[Drink_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblDrink] ([Drink_Id], [Drink]) VALUES (N'NO', N'No')
INSERT [dbo].[tblDrink] ([Drink_Id], [Drink]) VALUES (N'OCA', N'Occasionally')
INSERT [dbo].[tblDrink] ([Drink_Id], [Drink]) VALUES (N'YES', N'Yes')
/****** Object:  Table [dbo].[tblDiet]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDiet](
	[Diet_Id] [varchar](50) NOT NULL,
	[Diet] [varchar](50) NULL,
 CONSTRAINT [PK_tblDiet] PRIMARY KEY CLUSTERED 
(
	[Diet_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblDiet] ([Diet_Id], [Diet]) VALUES (N'Eggetarian', N'Eggetarian')
INSERT [dbo].[tblDiet] ([Diet_Id], [Diet]) VALUES (N'Non-veg', N'Non-veg')
INSERT [dbo].[tblDiet] ([Diet_Id], [Diet]) VALUES (N'Occasionally', N'Occasionally Non-veg')
INSERT [dbo].[tblDiet] ([Diet_Id], [Diet]) VALUES (N'Veg', N'Veg')
/****** Object:  Table [dbo].[tblComunity]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblComunity](
	[Comunity_Id] [varchar](10) NOT NULL,
	[Comunity_Name] [varchar](50) NULL,
 CONSTRAINT [PK_tblComunity] PRIMARY KEY CLUSTERED 
(
	[Comunity_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'BDT', N'Buddhist')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'CRT', N'Christian')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'HND', N'Hindu')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'JAN', N'Jain')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'JWS', N'Jewish')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'MSL', N'Muslim')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'NO', N'No Religion')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'PRS', N'Parsi')
INSERT [dbo].[tblComunity] ([Comunity_Id], [Comunity_Name]) VALUES (N'SKH', N'Sikh')
/****** Object:  Table [dbo].[tblCity]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCity](
	[city_id] [int] NOT NULL,
	[city_name] [varchar](50) NULL,
	[latitude] [varchar](10) NULL,
	[longitude] [varchar](10) NULL,
	[state] [varchar](50) NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (1, N'Port Blair', N'11.67 N', N'92.76 E', N'Andaman and Nicobar Islands')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (2, N'Adilabad', N'19.68 N', N'78.53 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (3, N'Adoni', N'15.63 N', N'77.28 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (4, N'Alwal', N'17.50 N', N'78.54 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (5, N'Anakapalle', N'17.69 N', N'83.00 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (6, N'Anantapur', N'14.70 N', N'77.59 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (7, N'Bapatla', N'15.91 N', N'80.47 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (8, N'Belampalli', N'19.06 N', N'79.49 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (9, N'Bhimavaram', N'16.55 N', N'81.53 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (10, N'Bhongir', N'17.52 N', N'78.88 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (11, N'Bobbili', N'18.57 N', N'83.37 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (12, N'Bodhan', N'18.66 N', N'77.88 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (13, N'Chilakalurupet', N'16.10 N', N'80.16 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (14, N'Chinna Chawk', N'14.47 N', N'78.83 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (15, N'Chirala', N'15.84 N', N'80.35 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (16, N'Chittur', N'13.22 N', N'79.10 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (17, N'Cuddapah', N'14.48 N', N'78.81 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (18, N'Dharmavaram', N'14.42 N', N'77.71 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (19, N'Dhone', N'15.42 N', N'77.88 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (20, N'Eluru', N'16.72 N', N'81.11 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (21, N'Gaddiannaram', N'17.36 N', N'78.52 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (22, N'Gadwal', N'16.23 N', N'77.80 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (23, N'Gajuwaka', N'17.70 N', N'83.21 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (24, N'Gudivada', N'16.44 N', N'81.00 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (25, N'Gudur', N'14.15 N', N'79.84 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (26, N'Guntakal', N'15.18 N', N'77.37 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (27, N'Guntur', N'16.31 N', N'80.44 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (28, N'Hindupur', N'13.83 N', N'77.48 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (29, N'Hyderabad', N'17.40 N', N'78.48 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (30, N'Jagtial', N'18.80 N', N'78.91 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (31, N'Kadiri', N'14.12 N', N'78.16 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (32, N'Kagaznagar', N'19.34 N', N'79.48 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (33, N'Kakinada', N'16.96 N', N'82.24 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (34, N'Kallur', N'15.69 N', N'77.77 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (35, N'Kamareddi', N'18.32 N', N'78.35 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (36, N'Kapra', N'17.37 N', N'78.48 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (37, N'Karimnagar', N'18.45 N', N'79.13 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (38, N'Karnul', N'15.83 N', N'78.03 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (39, N'Kavali', N'14.92 N', N'79.99 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (40, N'Khammam', N'17.25 N', N'80.15 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (41, N'Kodar', N'16.98 N', N'79.97 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (42, N'Kondukur', N'15.22 N', N'79.91 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (43, N'Koratla', N'18.82 N', N'78.72 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (44, N'Kottagudem', N'17.56 N', N'80.64 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (45, N'Kukatpalle', N'17.49 N', N'78.41 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (46, N'Lalbahadur Nagar', N'17.43 N', N'78.50 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (47, N'Machilipatnam', N'16.19 N', N'81.14 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (48, N'Mahbubnagar', N'16.74 N', N'77.98 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (49, N'Malkajgiri', N'17.55 N', N'78.59 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (50, N'Mancheral', N'18.88 N', N'79.45 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (51, N'Mandamarri', N'18.97 N', N'79.47 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (52, N'Mangalagiri', N'16.44 N', N'80.56 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (53, N'Markapur', N'15.73 N', N'79.28 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (54, N'Miryalaguda', N'16.87 N', N'79.57 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (55, N'Nalgonda', N'17.06 N', N'79.26 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (56, N'Nandyal', N'15.49 N', N'78.48 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (57, N'Narasapur', N'16.45 N', N'81.70 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (58, N'Narasaraopet', N'16.24 N', N'80.04 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (59, N'Nellur', N'14.46 N', N'79.98 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (60, N'Nirmal', N'19.12 N', N'78.35 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (61, N'Nizamabad', N'18.68 N', N'78.10 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (62, N'Nuzvid', N'16.78 N', N'80.85 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (63, N'Ongole', N'15.50 N', N'80.05 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (64, N'Palakollu', N'16.52 N', N'81.75 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (65, N'Palasa', N'18.77 N', N'84.42 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (66, N'Palwancha', N'17.60 N', N'80.68 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (67, N'Patancheru', N'17.53 N', N'78.27 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (68, N'Piduguralla', N'16.48 N', N'79.90 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (69, N'Ponnur', N'16.07 N', N'80.56 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (70, N'Proddatur', N'14.73 N', N'78.55 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (71, N'Qutubullapur', N'17.43 N', N'78.47 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (72, N'Rajamahendri', N'17.02 N', N'81.79 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (73, N'Rajampet', N'14.18 N', N'79.17 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (74, N'Rajendranagar', N'17.29 N', N'78.39 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (75, N'Ramachandrapuram', N'17.56 N', N'78.04 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (76, N'Ramagundam', N'18.80 N', N'79.45 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (77, N'Rayachoti', N'14.05 N', N'78.75 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (78, N'Rayadrug', N'14.70 N', N'76.87 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (79, N'Samalkot', N'17.06 N', N'82.18 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (80, N'Sangareddi', N'17.63 N', N'78.08 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (81, N'Sattenapalle', N'16.40 N', N'80.18 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (82, N'Serilungampalle', N'17.48 N', N'78.33 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (83, N'Siddipet', N'18.11 N', N'78.84 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (84, N'Sikandarabad', N'17.47 N', N'78.52 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (85, N'Sirsilla', N'18.40 N', N'78.81 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (86, N'Srikakulam', N'18.30 N', N'83.90 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (87, N'Srikalahasti', N'13.76 N', N'79.70 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (88, N'Suriapet', N'17.15 N', N'79.62 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (89, N'Tadepalle', N'16.48 N', N'80.60 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (90, N'Tadepallegudem', N'16.82 N', N'81.52 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (91, N'Tadpatri', N'14.91 N', N'78.00 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (92, N'Tandur', N'17.25 N', N'77.58 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (93, N'Tanuku', N'16.75 N', N'81.69 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (94, N'Tenali', N'16.24 N', N'80.65 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (95, N'Tirupati', N'13.63 N', N'79.41 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (96, N'Tuni', N'17.35 N', N'82.55 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (97, N'Uppal Kalan', N'17.38 N', N'78.55 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (98, N'Vijayawada', N'16.52 N', N'80.63 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (99, N'Vinukonda', N'16.05 N', N'79.75 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (100, N'Visakhapatnam', N'17.73 N', N'83.30 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (101, N'Vizianagaram', N'18.12 N', N'83.40 E', N'Andhra Pradesh')
GO
print 'Processed 100 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (102, N'Vuyyuru', N'16.37 N', N'80.85 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (103, N'Wanparti', N'16.37 N', N'78.07 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (104, N'Warangal', N'18.01 N', N'79.58 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (105, N'Yemmiganur', N'15.73 N', N'77.48 E', N'Andhra Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (106, N'Itanagar', N'27.14 N', N'93.61 E', N'Arunachal Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (107, N'Barpeta', N'26.32 N', N'91.00 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (108, N'Bongaigaon', N'26.48 N', N'90.54 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (109, N'Dhuburi', N'26.03 N', N'89.97 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (110, N'Dibrugarh', N'27.49 N', N'94.91 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (111, N'Diphu', N'25.84 N', N'93.43 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (112, N'Guwahati', N'26.19 N', N'91.75 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (113, N'Jorhat', N'26.76 N', N'94.20 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (114, N'Karimganj', N'24.85 N', N'92.36 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (115, N'Lakhimpur', N'27.24 N', N'94.10 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (116, N'Lanka', N'25.93 N', N'92.95 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (117, N'Nagaon', N'26.35 N', N'92.68 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (118, N'Sibsagar', N'26.99 N', N'94.63 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (119, N'Silchar', N'24.83 N', N'92.77 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (120, N'Tezpur', N'26.63 N', N'92.79 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (121, N'Tinsukia', N'27.50 N', N'95.36 E', N'Assam')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (122, N'Alipur Duar', N'26.50 N', N'89.53 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (123, N'Arambagh', N'22.88 N', N'87.78 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (124, N'Asansol', N'23.69 N', N'86.98 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (125, N'Ashoknagar Kalyangarh', N'22.84 N', N'88.63 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (126, N'Baharampur', N'24.10 N', N'88.24 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (127, N'Baidyabati', N'22.79 N', N'88.33 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (128, N'Baj Baj', N'22.48 N', N'88.17 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (129, N'Bally', N'22.65 N', N'88.35 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (130, N'Bally Cantonment', N'22.65 N', N'88.36 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (131, N'Balurghat', N'25.23 N', N'88.77 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (132, N'Bangaon', N'23.05 N', N'88.83 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (133, N'Bankra', N'22.58 N', N'88.31 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (134, N'Bankura', N'23.24 N', N'87.07 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (135, N'Bansbaria', N'22.95 N', N'88.40 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (136, N'Baranagar', N'22.64 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (137, N'Barddhaman', N'23.24 N', N'87.86 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (138, N'Basirhat', N'22.66 N', N'88.86 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (139, N'Bhadreswar', N'22.84 N', N'88.35 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (140, N'Bhatpara', N'22.89 N', N'88.42 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (141, N'Bidhannagar', N'22.57 N', N'88.42 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (142, N'Binnaguri', N'26.74 N', N'89.037 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (143, N'Bishnupur', N'23.08 N', N'87.33 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (144, N'Bolpur', N'23.67 N', N'87.70 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (145, N'Calcutta', N'22.57 N', N'88.36 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (146, N'Chakdaha', N'22.48 N', N'88.35 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (147, N'Champdani', N'22.81 N', N'88.34 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (148, N'Chandannagar', N'22.89 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (149, N'Contai', N'21.79 N', N'87.75 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (150, N'Dabgram', N'', N'', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (151, N'Darjiling', N'27.05 N', N'88.26 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (152, N'Dhulian', N'24.68 N', N'87.97 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (153, N'Dinhata', N'26.13 N', N'89.47 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (154, N'Dum Dum', N'22.63 N', N'88.42 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (155, N'Durgapur', N'23.50 N', N'87.31 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (156, N'Gangarampur', N'25.40 N', N'88.52 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (157, N'Garulia', N'22.83 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (158, N'Gayespur', N'22.98 N', N'88.51 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (159, N'Ghatal', N'22.67 N', N'87.72 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (160, N'Gopalpur', N'', N'', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (161, N'Habra', N'22.84 N', N'88.62 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (162, N'Halisahar', N'22.95 N', N'88.42 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (163, N'Haora', N'22.58 N', N'88.33 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (164, N'HugliChunchura', N'22.91 N', N'88.40 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (165, N'Ingraj Bazar', N'25.01 N', N'88.14 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (166, N'Islampur', N'26.27 N', N'88.20 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (167, N'Jalpaiguri', N'26.53 N', N'88.71 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (168, N'Jamuria', N'23.70 N', N'87.08 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (169, N'Jangipur', N'24.47 N', N'88.07 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (170, N'Jhargram', N'22.45 N', N'86.98 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (171, N'Kaliyaganj', N'25.63 N', N'88.32 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (172, N'Kalna', N'23.22 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (173, N'Kalyani', N'22.98 N', N'88.48 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (174, N'Kamarhati', N'22.67 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (175, N'Kanchrapara', N'22.95 N', N'88.45 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (176, N'Kandi', N'23.95 N', N'88.03 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (177, N'Karsiyang', N'26.88 N', N'88.28 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (178, N'Katwa', N'23.65 N', N'88.13 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (179, N'Kharagpur', N'22.34 N', N'87.31 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (180, N'Kharagpur Railway Settlement', N'22.34 N', N'87.26 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (181, N'Khardaha', N'22.73 N', N'88.38 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (182, N'Kharia', N'', N'', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (183, N'Koch Bihar', N'26.33 N', N'89.46 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (184, N'Konnagar', N'22.70 N', N'88.36 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (185, N'Krishnanagar', N'23.41 N', N'88.51 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (186, N'Kulti', N'23.72 N', N'86.89 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (187, N'Madhyamgram', N'22.70 N', N'88.45 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (188, N'Maheshtala', N'22.51 N', N'88.23 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (189, N'Memari', N'23.20 N', N'88.12 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (190, N'Midnapur', N'22.33 N', N'87.15 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (191, N'Naihati', N'22.91 N', N'88.43 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (192, N'Navadwip', N'23.42 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (193, N'Ni Barakpur', N'22.77 N', N'88.36 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (194, N'North Barakpur', N'22.78 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (195, N'North Dum Dum', N'22.64 N', N'88.41 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (196, N'Old Maldah', N'', N'', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (197, N'Panihati', N'22.69 N', N'88.37 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (198, N'Phulia', N'23.24 N', N'88.50 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (199, N'Pujali', N'22.47 N', N'88.15 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (200, N'Puruliya', N'23.34 N', N'86.36 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (201, N'Raiganj', N'25.62 N', N'88.12 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (202, N'Rajpur', N'22.44 N', N'88.44 E', N'West Bengal')
GO
print 'Processed 200 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (203, N'Rampur Hat', N'24.17 N', N'87.78 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (204, N'Ranaghat', N'23.19 N', N'88.58 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (205, N'Raniganj', N'23.62 N', N'87.11 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (206, N'Rishra', N'22.71 N', N'88.36 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (207, N'Shantipur', N'23.26 N', N'88.44 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (208, N'Shiliguri', N'26.73 N', N'88.42 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (209, N'Shrirampur', N'22.74 N', N'88.35 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (210, N'Siuri', N'23.91 N', N'87.53 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (211, N'South Dum Dum', N'22.61 N', N'88.41 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (212, N'Titagarh', N'22.74 N', N'88.38 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (213, N'Ulubaria', N'22.47 N', N'88.11 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (214, N'UttarparaKotrung', N'22.66 N', N'88.35 E', N'West Bengal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (215, N'Araria', N'26.15 N', N'87.52 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (216, N'Arrah', N'25.56 N', N'84.66 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (217, N'Aurangabad', N'24.75 N', N'84.37 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (218, N'Bagaha', N'27.10 N', N'84.09 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (219, N'Begusarai', N'25.42 N', N'86.12 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (220, N'Bettiah', N'26.81 N', N'84.50 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (221, N'Bhabua', N'25.05 N', N'83.62 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (222, N'Bhagalpur', N'25.26 N', N'86.98 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (223, N'Bihar', N'25.21 N', N'85.52 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (224, N'Buxar', N'25.58 N', N'83.98 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (225, N'Chhapra', N'25.78 N', N'84.72 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (226, N'Darbhanga', N'26.16 N', N'85.88 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (227, N'Dehri', N'24.91 N', N'84.18 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (228, N'DighaMainpura', N'', N'', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (229, N'Dinapur', N'25.64 N', N'85.04 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (230, N'Dumraon', N'25.55 N', N'84.15 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (231, N'Gaya', N'24.81 N', N'85.00 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (232, N'Gopalganj', N'26.47 N', N'84.43 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (233, N'Goura', N'', N'', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (234, N'Hajipur', N'', N'', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (235, N'Jahanabad', N'25.22 N', N'84.98 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (236, N'Jamalpur', N'25.32 N', N'86.48 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (237, N'Jamui', N'24.92 N', N'86.22 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (238, N'Katihar', N'25.55 N', N'87.57 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (239, N'Khagaria', N'25.50 N', N'86.48 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (240, N'Khagaul', N'25.58 N', N'85.05 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (241, N'Kishanganj', N'26.11 N', N'87.95 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (242, N'Lakhisarai', N'25.18 N', N'86.09 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (243, N'Madhipura', N'25.92 N', N'86.78 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (244, N'Madhubani', N'26.37 N', N'86.06 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (245, N'Masaurhi', N'25.35 N', N'85.03 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (246, N'Mokama', N'25.40 N', N'85.92 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (247, N'Motihari', N'26.66 N', N'84.91 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (248, N'Munger', N'25.39 N', N'86.47 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (249, N'Muzaffarpur', N'26.13 N', N'85.38 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (250, N'Nawada', N'24.88 N', N'85.54 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (251, N'Patna', N'25.62 N', N'85.13 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (252, N'Phulwari', N'25.60 N', N'85.13 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (253, N'Purnia', N'25.78 N', N'87.47 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (254, N'Raxaul', N'26.98 N', N'84.85 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (255, N'Saharsa', N'25.88 N', N'86.59 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (256, N'Samastipur', N'25.85 N', N'85.78 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (257, N'Sasaram', N'24.96 N', N'84.01 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (258, N'Sitamarhi', N'26.61 N', N'85.48 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (259, N'Siwan', N'26.23 N', N'84.35 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (260, N'Supaul', N'26.12 N', N'86.60 E', N'Bihar')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (261, N'Chandigarh', N'30.75 N', N'76.78 E', N'Chandigarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (262, N'Ambikapur', N'23.13 N', N'83.20 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (263, N'Bhilai', N'21.21 N', N'81.38 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (264, N'Bilaspur', N'22.09 N', N'82.15 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (265, N'Charoda', N'21.23 N', N'81.50 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (266, N'Chirmiri', N'23.21 N', N'82.41 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (267, N'Dhamtari', N'20.71 N', N'81.55 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (268, N'Durg', N'21.20 N', N'81.28 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (269, N'Jagdalpur', N'19.09 N', N'82.03 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (270, N'Korba', N'22.35 N', N'82.69 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (271, N'Raigarh', N'21.90 N', N'83.39 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (272, N'Raipur', N'21.24 N', N'81.63 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (273, N'Rajnandgaon', N'21.10 N', N'81.04 E', N'Chhattisgarh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (274, N'Bhalswa Jahangirpur', N'28.74 N', N'77.17 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (275, N'Burari', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (276, N'Chilla Saroda Bangar', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (277, N'Dallo Pura', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (278, N'Delhi', N'28.67 N', N'77.21 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (279, N'Deoli', N'28.49 N', N'77.22 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (280, N'Dilli Cantonment', N'28.57 N', N'77.16 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (281, N'Gharoli', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (282, N'Gokalpur', N'28.71 N', N'77.28 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (283, N'Hastsal', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (284, N'Jaffrabad', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (285, N'Karawal Nagar', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (286, N'Khajuri Khas', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (287, N'Kirari Suleman Nagar', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (288, N'Mandoli', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (289, N'Mithe Pur', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (290, N'Molarband', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (291, N'Mundka', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (292, N'Mustafabad', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (293, N'Nangloi Jat', N'28.68 N', N'77.07 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (294, N'Ni Dilli', N'28.60 N', N'77.22 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (295, N'Pul Pehlad', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (296, N'Puth Kalan', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (297, N'Roshan Pura', N'28.60 N', N'76.99 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (298, N'Sadat Pur Gujran', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (299, N'Sultanpur Majra', N'28.76 N', N'77.06 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (300, N'Tajpul', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (301, N'Tigri', N'28.50 N', N'77.22 E', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (302, N'Ziauddin Pur', N'', N'', N'Delhi')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (303, N'Madgaon', N'15.28 N', N'73.94 E', N'Goa')
GO
print 'Processed 300 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (304, N'Mormugao', N'15.42 N', N'73.78 E', N'Goa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (305, N'Panaji', N'15.50 N', N'73.81 E', N'Goa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (306, N'Ahmadabad', N'23.03 N', N'72.58 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (307, N'Amreli', N'21.61 N', N'71.22 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (308, N'Anand', N'22.56 N', N'72.95 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (309, N'Anjar', N'23.12 N', N'70.02 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (310, N'Bardoli', N'21.12 N', N'73.12 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (311, N'Bharuch', N'21.71 N', N'72.97 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (312, N'Bhavnagar', N'21.79 N', N'72.13 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (313, N'Bhuj', N'23.26 N', N'69.66 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (314, N'Borsad', N'22.42 N', N'72.90 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (315, N'Botad', N'22.18 N', N'71.66 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (316, N'Chandkheda', N'23.15 N', N'72.61 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (317, N'Chandlodiya', N'23.10 N', N'72.56 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (318, N'Dabhoi', N'22.13 N', N'73.41 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (319, N'Dahod', N'22.84 N', N'74.25 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (320, N'Dholka', N'22.74 N', N'72.44 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (321, N'Dhoraji', N'21.74 N', N'70.44 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (322, N'Dhrangadhra', N'23.00 N', N'71.46 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (323, N'Disa', N'24.26 N', N'72.18 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (324, N'Gandhidham', N'23.07 N', N'70.13 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (325, N'Gandhinagar', N'23.30 N', N'72.63 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (326, N'Ghatlodiya', N'23.05 N', N'72.55 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (327, N'Godhra', N'22.77 N', N'73.60 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (328, N'Gondal', N'21.97 N', N'70.80 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (329, N'Himatnagar', N'23.60 N', N'72.96 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (330, N'Jamnagar', N'22.47 N', N'70.07 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (331, N'Jamnagar', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (332, N'Jetpur', N'21.75 N', N'70.61 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (333, N'Junagadh', N'21.52 N', N'70.45 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (334, N'Kalol', N'23.25 N', N'72.49 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (335, N'Keshod', N'21.31 N', N'70.23 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (336, N'Khambhat', N'22.32 N', N'72.61 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (337, N'Kundla', N'21.35 N', N'71.30 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (338, N'Mahuva', N'21.10 N', N'71.75 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (339, N'Mangrol', N'21.12 N', N'70.12 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (340, N'Modasa', N'23.47 N', N'73.30 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (341, N'Morvi', N'22.82 N', N'70.83 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (342, N'Nadiad', N'22.70 N', N'72.85 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (343, N'Navagam Ghed', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (344, N'Navsari', N'20.96 N', N'72.92 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (345, N'Palitana', N'21.52 N', N'71.83 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (346, N'Patan', N'23.86 N', N'72.11 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (347, N'Porbandar', N'21.65 N', N'69.60 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (348, N'Puna', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (349, N'Rajkot', N'22.31 N', N'70.79 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (350, N'Ramod', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (351, N'Ranip', N'23.03 N', N'72.54 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (352, N'Siddhapur', N'23.92 N', N'72.37 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (353, N'Sihor', N'21.70 N', N'71.97 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (354, N'Surat', N'21.20 N', N'72.82 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (355, N'Surendranagar', N'22.71 N', N'71.67 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (356, N'Thaltej', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (357, N'Una', N'20.82 N', N'71.03 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (358, N'Unjha', N'23.81 N', N'72.38 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (359, N'Upleta', N'21.75 N', N'70.27 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (360, N'Vadodara', N'22.31 N', N'73.18 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (361, N'Valsad', N'20.62 N', N'72.92 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (362, N'Vapi', N'20.37 N', N'72.90 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (363, N'Vastral', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (364, N'Vejalpur', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (365, N'Veraval', N'20.92 N', N'70.34 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (366, N'Vijalpor', N'', N'', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (367, N'Visnagar', N'23.71 N', N'72.54 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (368, N'Wadhwan', N'22.73 N', N'71.72 E', N'Gujarat')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (369, N'Ambala', N'30.38 N', N'76.77 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (370, N'Ambala Cantonment', N'30.39 N', N'76.86 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (371, N'Ambala Sadar', N'30.35 N', N'76.84 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (372, N'Bahadurgarh', N'28.69 N', N'76.92 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (373, N'Bhiwani', N'28.81 N', N'76.12 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (374, N'Charkhi Dadri', N'28.60 N', N'76.27 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (375, N'Dabwali', N'29.95 N', N'74.73 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (376, N'Faridabad', N'28.38 N', N'77.30 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (377, N'Gohana', N'29.13 N', N'76.70 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (378, N'Hisar', N'29.17 N', N'75.72 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (379, N'Jagadhri', N'30.18 N', N'77.29 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (380, N'Jind', N'29.31 N', N'76.30 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (381, N'Kaithal', N'29.81 N', N'76.40 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (382, N'Karnal', N'29.69 N', N'76.97 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (383, N'Narnaul', N'28.04 N', N'76.10 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (384, N'Narwana', N'29.62 N', N'76.12 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (385, N'Palwal', N'28.15 N', N'77.32 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (386, N'Panchkula', N'30.70 N', N'76.88 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (387, N'Panipat', N'29.39 N', N'76.96 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (388, N'Rewari', N'28.19 N', N'76.60 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (389, N'Rohtak', N'28.90 N', N'76.58 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (390, N'Sirsa', N'29.53 N', N'75.03 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (391, N'Sonipat', N'28.99 N', N'77.01 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (392, N'Thanesar', N'29.98 N', N'76.82 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (393, N'Tohana', N'29.70 N', N'75.90 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (394, N'Yamunanagar', N'30.14 N', N'77.28 E', N'Haryana')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (395, N'Shimla', N'31.11 N', N'77.16 E', N'Himachal Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (396, N'Anantnag', N'33.73 N', N'75.15 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (397, N'Baramula', N'34.20 N', N'74.35 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (398, N'Bari Brahmana', N'', N'', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (399, N'Jammu', N'32.71 N', N'74.85 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (400, N'Kathua', N'32.37 N', N'75.52 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (401, N'Sopur', N'34.30 N', N'74.47 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (402, N'Srinagar', N'34.09 N', N'74.79 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (403, N'Udhampur', N'32.93 N', N'75.13 E', N'Jammu and Kashmir')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (404, N'Adityapur', N'22.80 N', N'86.04 E', N'Jharkhand')
GO
print 'Processed 400 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (405, N'Bagbahra', N'22.82 N', N'86.20 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (406, N'Bhuli', N'23.79 N', N'86.38 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (407, N'Bokaro', N'23.78 N', N'85.96 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (408, N'Chaibasa', N'22.56 N', N'85.80 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (409, N'Chas', N'23.65 N', N'86.17 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (410, N'Daltenganj', N'24.05 N', N'84.06 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (411, N'Devghar', N'24.49 N', N'86.69 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (412, N'Dhanbad', N'23.80 N', N'86.42 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (413, N'Hazaribag', N'24.01 N', N'85.36 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (414, N'Jamshedpur', N'22.79 N', N'86.20 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (415, N'Jharia', N'23.76 N', N'86.42 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (416, N'Jhumri Tilaiya', N'24.43 N', N'85.52 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (417, N'Jorapokhar', N'23.79 N', N'86.36 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (418, N'Katras', N'23.80 N', N'86.28 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (419, N'Lohardaga', N'23.43 N', N'84.68 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (420, N'Mango', N'22.85 N', N'86.21 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (421, N'Phusro', N'23.68 N', N'85.86 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (422, N'Ramgarh', N'23.63 N', N'85.51 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (423, N'Ranchi', N'23.36 N', N'85.33 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (424, N'Sahibganj', N'25.25 N', N'87.62 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (425, N'Saunda', N'23.64 N', N'85.37 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (426, N'Sindari', N'23.68 N', N'86.49 E', N'Jharkhand')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (427, N'Bagalkot', N'16.19 N', N'75.69 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (428, N'Bangalore', N'12.97 N', N'77.56 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (429, N'Basavakalyan', N'17.87 N', N'76.95 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (430, N'Belgaum', N'15.86 N', N'74.50 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (431, N'Bellary', N'15.14 N', N'76.91 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (432, N'Bhadravati', N'13.84 N', N'75.69 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (433, N'Bidar', N'17.92 N', N'77.52 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (434, N'Bijapur', N'16.83 N', N'75.71 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (435, N'Bommanahalli', N'13.01 N', N'77.63 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (436, N'Byatarayanapura', N'', N'', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (437, N'Challakere', N'14.32 N', N'76.65 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (438, N'Chamrajnagar', N'11.92 N', N'76.95 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (439, N'Channapatna', N'12.66 N', N'77.19 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (440, N'Chik Ballapur', N'13.47 N', N'77.73 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (441, N'Chikmagalur', N'13.32 N', N'75.76 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (442, N'Chintamani', N'13.40 N', N'78.05 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (443, N'Chitradurga', N'14.23 N', N'76.39 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (444, N'Dasarahalli', N'13.01 N', N'77.49 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (445, N'Davanagere', N'14.46 N', N'75.92 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (446, N'Dod Ballapur', N'13.30 N', N'77.52 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (447, N'Gadag', N'15.44 N', N'75.63 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (448, N'Gangawati', N'15.44 N', N'76.52 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (449, N'Gokak', N'16.18 N', N'74.81 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (450, N'Gulbarga', N'17.34 N', N'76.82 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (451, N'Harihar', N'14.52 N', N'75.80 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (452, N'Hassan', N'13.01 N', N'76.08 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (453, N'Haveri', N'14.80 N', N'75.40 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (454, N'Hiriyur', N'13.97 N', N'76.60 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (455, N'Hosakote', N'', N'', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (456, N'Hospet', N'15.28 N', N'76.37 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (457, N'Hubli', N'15.36 N', N'75.13 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (458, N'Ilkal', N'15.97 N', N'76.13 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (459, N'Jamkhandi', N'16.51 N', N'75.28 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (460, N'Kanakapura', N'12.54 N', N'77.42 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (461, N'Karwar', N'14.82 N', N'74.12 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (462, N'Kolar', N'13.14 N', N'78.13 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (463, N'Kollegal', N'12.15 N', N'77.12 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (464, N'Koppal', N'15.35 N', N'76.15 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (465, N'Krishnarajapura', N'12.97 N', N'77.74 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (466, N'Mahadevapura', N'', N'', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (467, N'Maisuru', N'12.31 N', N'76.65 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (468, N'Mandya', N'12.54 N', N'76.89 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (469, N'Mangaluru', N'12.88 N', N'74.84 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (470, N'Nipani', N'16.41 N', N'74.38 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (471, N'Pattanagere', N'', N'', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (472, N'Puttur', N'12.77 N', N'75.22 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (473, N'Rabkavi', N'16.47 N', N'75.11 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (474, N'Raichur', N'16.21 N', N'77.35 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (475, N'Ramanagaram', N'12.72 N', N'77.27 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (476, N'Ranibennur', N'14.62 N', N'75.61 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (477, N'Robertsonpet', N'12.97 N', N'78.28 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (478, N'Sagar', N'14.17 N', N'75.03 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (479, N'Shahabad', N'17.13 N', N'76.93 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (480, N'Shahpur', N'16.70 N', N'76.83 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (481, N'Shimoga', N'13.93 N', N'75.57 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (482, N'Shorapur', N'16.52 N', N'76.75 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (483, N'Sidlaghatta', N'13.38 N', N'77.87 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (484, N'Sira', N'13.75 N', N'76.90 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (485, N'Sirsi', N'14.62 N', N'74.85 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (486, N'Tiptur', N'13.27 N', N'76.48 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (487, N'Tumkur', N'13.34 N', N'77.10 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (488, N'Udupi', N'13.35 N', N'74.75 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (489, N'Ullal', N'12.80 N', N'74.85 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (490, N'Yadgir', N'16.77 N', N'77.13 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (491, N'Yelahanka', N'13.10 N', N'77.60 E', N'Karnataka')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (492, N'Alappuzha', N'9.50 N', N'76.33 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (493, N'Beypur', N'11.18 N', N'75.82 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (494, N'Cheruvannur', N'11.21 N', N'75.84 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (495, N'Edakkara', N'', N'', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (496, N'Edathala', N'10.03 N', N'76.32 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (497, N'Kalamassery', N'10.05 N', N'76.27 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (498, N'Kannan Devan Hills', N'', N'', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (499, N'Kannangad', N'12.34 N', N'75.09 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (500, N'Kannur', N'11.86 N', N'75.35 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (501, N'Kayankulam', N'9.17 N', N'76.49 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (502, N'Kochi', N'10.02 N', N'76.22 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (503, N'Kollam', N'8.89 N', N'76.58 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (504, N'Kottayam', N'9.60 N', N'76.52 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (505, N'Koyilandi', N'11.43 N', N'75.70 E', N'Kerala')
GO
print 'Processed 500 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (506, N'Kozhikkod', N'11.26 N', N'75.78 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (507, N'Kunnamkulam', N'10.65 N', N'76.08 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (508, N'Malappuram', N'11.07 N', N'76.06 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (509, N'Manjeri', N'11.12 N', N'76.11 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (510, N'Nedumangad', N'8.61 N', N'77.00 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (511, N'Neyyattinkara', N'8.40 N', N'77.08 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (512, N'Palakkad', N'10.78 N', N'76.65 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (513, N'Pallichal', N'', N'', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (514, N'Payyannur', N'12.10 N', N'75.19 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (515, N'Ponnani', N'10.78 N', N'75.92 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (516, N'Talipparamba', N'12.03 N', N'75.36 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (517, N'Thalassery', N'11.75 N', N'75.49 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (518, N'Thiruvananthapuram', N'8.51 N', N'76.95 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (519, N'Thrippunithura', N'9.94 N', N'76.35 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (520, N'Thrissur', N'10.52 N', N'76.21 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (521, N'Tirur', N'10.91 N', N'75.92 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (522, N'Tiruvalla', N'9.39 N', N'76.57 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (523, N'Vadakara', N'11.61 N', N'75.58 E', N'Kerala')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (524, N'Ashoknagar', N'24.57 N', N'77.72 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (525, N'Balaghat', N'21.80 N', N'80.18 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (526, N'Basoda', N'23.85 N', N'77.93 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (527, N'Betul', N'21.92 N', N'77.90 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (528, N'Bhind', N'26.57 N', N'78.77 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (529, N'Bhopal', N'23.24 N', N'77.40 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (530, N'BinaEtawa', N'24.20 N', N'78.20 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (531, N'Burhanpur', N'21.33 N', N'76.22 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (532, N'Chhatarpur', N'24.92 N', N'79.58 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (533, N'Chhindwara', N'22.07 N', N'78.94 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (534, N'Dabra', N'25.90 N', N'78.33 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (535, N'Damoh', N'23.85 N', N'79.44 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (536, N'Datia', N'25.67 N', N'78.45 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (537, N'Dewas', N'22.97 N', N'76.05 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (538, N'Dhar', N'22.60 N', N'75.29 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (539, N'Gohad', N'26.43 N', N'78.45 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (540, N'Guna', N'24.65 N', N'77.30 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (541, N'Gwalior', N'26.23 N', N'78.17 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (542, N'Harda', N'22.33 N', N'77.11 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (543, N'Hoshangabad', N'22.75 N', N'77.71 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (544, N'Indore', N'22.72 N', N'75.86 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (545, N'Itarsi', N'22.62 N', N'77.76 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (546, N'Jabalpur', N'23.17 N', N'79.94 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (547, N'Jabalpur Cantonment', N'23.16 N', N'79.95 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (548, N'Jaora', N'23.64 N', N'75.11 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (549, N'Khandwa', N'21.83 N', N'76.35 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (550, N'Khargone', N'21.83 N', N'75.60 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (551, N'Mandidip', N'23.10 N', N'77.52 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (552, N'Mandsaur', N'24.07 N', N'75.07 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (553, N'Mau', N'22.56 N', N'75.75 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (554, N'Morena', N'26.51 N', N'77.99 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (555, N'Murwara', N'23.85 N', N'80.39 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (556, N'Nagda', N'23.46 N', N'75.42 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (557, N'Nimach', N'24.47 N', N'74.87 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (558, N'Pithampur', N'', N'', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (559, N'Raghogarh', N'24.45 N', N'77.20 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (560, N'Ratlam', N'23.35 N', N'75.03 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (561, N'Rewa', N'24.53 N', N'81.29 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (562, N'Sagar', N'23.85 N', N'78.75 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (563, N'Sarni', N'22.04 N', N'78.27 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (564, N'Satna', N'24.58 N', N'80.83 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (565, N'Sehore', N'23.20 N', N'77.08 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (566, N'Sendhwa', N'21.68 N', N'75.10 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (567, N'Seoni', N'22.10 N', N'79.55 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (568, N'Shahdol', N'23.30 N', N'81.36 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (569, N'Shajapur', N'23.43 N', N'76.27 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (570, N'Sheopur', N'25.67 N', N'76.70 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (571, N'Shivapuri', N'25.43 N', N'77.65 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (572, N'Sidhi', N'24.42 N', N'81.88 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (573, N'Singrauli', N'23.84 N', N'82.27 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (574, N'Tikamgarh', N'24.74 N', N'78.83 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (575, N'Ujjain', N'23.19 N', N'75.78 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (576, N'Vidisha', N'23.53 N', N'77.80 E', N'Madhya Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (577, N'Achalpur', N'21.26 N', N'77.50 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (578, N'Ahmadnagar', N'19.10 N', N'74.74 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (579, N'Akola', N'20.71 N', N'77.00 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (580, N'Akot', N'21.10 N', N'77.05 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (581, N'Amalner', N'21.05 N', N'75.06 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (582, N'Ambajogai', N'18.73 N', N'76.38 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (583, N'Amravati', N'20.95 N', N'77.76 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (584, N'Anjangaon', N'21.16 N', N'77.31 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (585, N'Aurangabad', N'19.89 N', N'75.32 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (586, N'Badlapur', N'19.15 N', N'73.27 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (587, N'Ballarpur', N'19.85 N', N'79.35 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (588, N'Baramati', N'18.15 N', N'74.58 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (589, N'Barsi', N'18.24 N', N'75.69 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (590, N'Basmat', N'19.32 N', N'77.17 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (591, N'Bhadravati', N'20.11 N', N'79.12 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (592, N'Bhandara', N'21.18 N', N'79.65 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (593, N'Bhiwandi', N'19.30 N', N'73.05 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (594, N'Bhusawal', N'21.05 N', N'75.78 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (595, N'Bid', N'18.99 N', N'75.76 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (596, N'Mumbai', N'18.96 N', N'72.82 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (597, N'Buldana', N'20.54 N', N'76.18 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (598, N'Chalisgaon', N'20.46 N', N'74.99 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (599, N'Chandrapur', N'19.96 N', N'79.30 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (600, N'Chikhli', N'20.35 N', N'76.25 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (601, N'Chiplun', N'17.53 N', N'73.52 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (602, N'Chopda', N'21.25 N', N'75.28 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (603, N'Dahanu', N'19.97 N', N'72.73 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (604, N'Deolali', N'19.95 N', N'73.84 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (605, N'Dhule', N'20.90 N', N'74.77 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (606, N'Digdoh', N'', N'', N'Maharashtra')
GO
print 'Processed 600 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (607, N'Diglur', N'18.55 N', N'77.60 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (608, N'Gadchiroli', N'20.17 N', N'80.00 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (609, N'Gondiya', N'21.47 N', N'80.20 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (610, N'Hinganghat', N'20.56 N', N'78.83 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (611, N'Hingoli', N'19.72 N', N'77.14 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (612, N'Ichalkaranji', N'16.69 N', N'74.46 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (613, N'Jalgaon', N'21.01 N', N'75.56 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (614, N'Jalna', N'19.85 N', N'75.88 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (615, N'Kalyan', N'19.25 N', N'73.16 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (616, N'Kamthi', N'21.23 N', N'79.20 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (617, N'Karanja', N'20.48 N', N'77.48 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (618, N'Khadki', N'18.57 N', N'73.83 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (619, N'Khamgaon', N'20.70 N', N'76.56 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (620, N'Khopoli', N'18.78 N', N'73.33 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (621, N'Kolhapur', N'16.70 N', N'74.22 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (622, N'Kopargaon', N'19.88 N', N'74.48 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (623, N'Latur', N'18.41 N', N'76.58 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (624, N'Lonavale', N'18.75 N', N'73.42 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (625, N'Malegaon', N'20.56 N', N'74.52 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (626, N'Malkapur', N'20.90 N', N'76.19 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (627, N'Manmad', N'20.26 N', N'74.43 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (628, N'Mira Bhayandar', N'19.29 N', N'72.85 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (629, N'Nagpur', N'21.16 N', N'79.08 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (630, N'Nalasopara', N'19.43 N', N'72.78 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (631, N'Nanded', N'19.17 N', N'77.29 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (632, N'Nandurbar', N'21.38 N', N'74.23 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (633, N'Nashik', N'20.01 N', N'73.78 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (634, N'Navghar', N'19.34 N', N'72.90 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (635, N'Navi Mumbai', N'19.11 N', N'73.06 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (636, N'Navi Mumbai', N'19.00 N', N'73.10 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (637, N'Osmanabad', N'18.17 N', N'76.03 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (638, N'Palghar', N'19.68 N', N'72.75 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (639, N'Pandharpur', N'17.68 N', N'75.31 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (640, N'Parbhani', N'19.27 N', N'76.76 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (641, N'Phaltan', N'17.98 N', N'74.43 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (642, N'Pimpri', N'18.62 N', N'73.80 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (643, N'Pune', N'18.53 N', N'73.84 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (644, N'Pune Cantonment', N'18.50 N', N'73.88 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (645, N'Pusad', N'19.91 N', N'77.57 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (646, N'Ratnagiri', N'17.00 N', N'73.29 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (647, N'SangliMiraj', N'16.86 N', N'74.57 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (648, N'Satara', N'17.70 N', N'74.00 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (649, N'Shahada', N'21.55 N', N'74.47 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (650, N'Shegaon', N'20.78 N', N'76.68 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (651, N'Shirpur', N'21.35 N', N'74.88 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (652, N'Sholapur', N'17.67 N', N'75.89 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (653, N'Shrirampur', N'19.63 N', N'74.64 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (654, N'Sillod', N'20.30 N', N'75.65 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (655, N'Thana', N'19.20 N', N'72.97 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (656, N'Udgir', N'18.40 N', N'77.11 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (657, N'Ulhasnagar', N'19.23 N', N'73.15 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (658, N'Uran Islampur', N'17.05 N', N'74.27 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (659, N'Vasai', N'19.36 N', N'72.80 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (660, N'Virar', N'19.47 N', N'72.79 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (661, N'Wadi', N'', N'', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (662, N'Wani', N'20.07 N', N'78.95 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (663, N'Wardha', N'20.75 N', N'78.60 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (664, N'Warud', N'21.47 N', N'78.27 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (665, N'Washim', N'20.10 N', N'77.13 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (666, N'Yavatmal', N'20.41 N', N'78.13 E', N'Maharashtra')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (667, N'Imphal', N'24.79 N', N'93.94 E', N'Manipur')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (668, N'Shillong', N'25.57 N', N'91.87 E', N'Meghalaya')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (669, N'Tura', N'25.52 N', N'90.22 E', N'Meghalaya')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (670, N'Aizawl', N'23.71 N', N'92.71 E', N'Mizoram')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (671, N'Lunglei', N'22.88 N', N'92.73 E', N'Mizoram')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (672, N'Dimapur', N'25.92 N', N'93.73 E', N'Nagaland')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (673, N'Kohima', N'25.67 N', N'94.11 E', N'Nagaland')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (674, N'Wokha', N'26.10 N', N'94.27 E', N'Nagaland')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (675, N'Balangir', N'20.71 N', N'83.50 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (676, N'Baleshwar', N'21.49 N', N'86.95 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (677, N'Barbil', N'22.12 N', N'85.40 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (678, N'Bargarh', N'21.34 N', N'83.61 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (679, N'Baripada', N'21.95 N', N'86.73 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (680, N'Bhadrak', N'21.06 N', N'86.52 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (681, N'Bhawanipatna', N'19.91 N', N'83.17 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (682, N'Bhubaneswar', N'20.27 N', N'85.84 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (683, N'Brahmapur', N'19.32 N', N'84.80 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (684, N'Brajrajnagar', N'21.82 N', N'83.91 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (685, N'Dhenkanal', N'20.67 N', N'85.60 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (686, N'Jaypur', N'18.86 N', N'82.56 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (687, N'Jharsuguda', N'21.87 N', N'84.01 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (688, N'Kataka', N'20.47 N', N'85.88 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (689, N'Kendujhar', N'21.63 N', N'85.58 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (690, N'Paradwip', N'20.32 N', N'86.62 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (691, N'Puri', N'19.81 N', N'85.83 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (692, N'Raurkela', N'22.24 N', N'84.81 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (693, N'Raurkela Industrial Township', N'', N'', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (694, N'Rayagada', N'19.18 N', N'83.41 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (695, N'Sambalpur', N'21.47 N', N'83.97 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (696, N'Sunabeda', N'18.69 N', N'82.86 E', N'Orissa')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (697, N'Karaikal', N'10.93 N', N'79.83 E', N'Pondicherry')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (698, N'Ozhukarai', N'11.94 N', N'79.77 E', N'Pondicherry')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (699, N'Pondicherry', N'11.94 N', N'79.83 E', N'Pondicherry')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (700, N'Abohar', N'30.14 N', N'74.20 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (701, N'Amritsar', N'31.64 N', N'74.87 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (702, N'Barnala', N'30.39 N', N'75.54 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (703, N'Batala', N'31.82 N', N'75.21 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (704, N'Bathinda', N'30.17 N', N'74.97 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (705, N'Dhuri', N'30.37 N', N'75.87 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (706, N'Faridkot', N'30.68 N', N'74.74 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (707, N'Fazilka', N'30.41 N', N'74.02 E', N'Punjab')
GO
print 'Processed 700 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (708, N'Firozpur', N'30.92 N', N'74.61 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (709, N'Firozpur Cantonment', N'30.95 N', N'74.60 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (710, N'Gobindgarh', N'30.66 N', N'76.31 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (711, N'Gurdaspur', N'32.04 N', N'75.40 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (712, N'Hoshiarpur', N'31.53 N', N'75.91 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (713, N'Jagraon', N'30.78 N', N'75.48 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (714, N'Jalandhar', N'31.33 N', N'75.57 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (715, N'Kapurthala', N'31.38 N', N'75.38 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (716, N'Khanna', N'30.71 N', N'76.21 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (717, N'Kot Kapura', N'30.59 N', N'74.80 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (718, N'Ludhiana', N'30.91 N', N'75.84 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (719, N'Malaut', N'30.23 N', N'74.48 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (720, N'Maler Kotla', N'30.54 N', N'75.87 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (721, N'Mansa', N'29.98 N', N'75.39 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (722, N'Moga', N'30.82 N', N'75.17 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (723, N'Mohali', N'30.78 N', N'76.69 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (724, N'Pathankot', N'32.27 N', N'75.64 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (725, N'Patiala', N'30.32 N', N'76.39 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (726, N'Phagwara', N'31.22 N', N'75.76 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (727, N'Rajpura', N'30.48 N', N'76.59 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (728, N'Rupnagar', N'30.98 N', N'76.52 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (729, N'Samana', N'30.15 N', N'76.20 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (730, N'Sangrur', N'30.25 N', N'75.84 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (731, N'Sirhind', N'30.65 N', N'76.38 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (732, N'Sunam', N'30.13 N', N'75.80 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (733, N'Tarn Taran', N'31.45 N', N'74.92 E', N'Punjab')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (734, N'Ajmer', N'26.45 N', N'74.64 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (735, N'Alwar', N'27.56 N', N'76.60 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (736, N'Balotra', N'25.83 N', N'72.23 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (737, N'Banswara', N'23.54 N', N'74.44 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (738, N'Baran', N'25.10 N', N'76.51 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (739, N'Bari', N'26.65 N', N'77.60 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (740, N'Barmer', N'25.75 N', N'71.39 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (741, N'Beawar', N'26.10 N', N'74.30 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (742, N'Bharatpur', N'27.23 N', N'77.49 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (743, N'Bhilwara', N'25.35 N', N'74.63 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (744, N'Bhiwadi', N'', N'', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (745, N'Bikaner', N'28.03 N', N'73.32 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (746, N'Bundi', N'25.45 N', N'75.63 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (747, N'Chittaurgarh', N'24.89 N', N'74.63 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (748, N'Chomun', N'27.17 N', N'75.72 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (749, N'Churu', N'28.31 N', N'74.96 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (750, N'Daosa', N'26.88 N', N'76.33 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (751, N'Dhaulpur', N'26.70 N', N'77.87 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (752, N'Didwana', N'27.39 N', N'74.57 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (753, N'Fatehpur', N'27.99 N', N'74.95 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (754, N'Ganganagar', N'29.93 N', N'73.86 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (755, N'Gangapur', N'26.47 N', N'76.72 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (756, N'Hanumangarh', N'29.62 N', N'74.29 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (757, N'Hindaun', N'26.74 N', N'77.02 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (758, N'Jaipur', N'26.92 N', N'75.80 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (759, N'Jaisalmer', N'26.92 N', N'70.90 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (760, N'Jalor', N'25.35 N', N'72.62 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (761, N'Jhalawar', N'24.60 N', N'76.15 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (762, N'Jhunjhunun', N'28.13 N', N'75.39 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (763, N'Jodhpur', N'26.29 N', N'73.02 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (764, N'Karauli', N'26.50 N', N'77.02 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (765, N'Kishangarh', N'26.58 N', N'74.86 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (766, N'Kota', N'25.18 N', N'75.83 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (767, N'Kuchaman', N'27.15 N', N'74.85 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (768, N'Ladnun', N'27.64 N', N'74.38 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (769, N'Makrana', N'27.05 N', N'74.72 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (770, N'Nagaur', N'27.21 N', N'73.73 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (771, N'Nawalgarh', N'27.85 N', N'75.27 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (772, N'Nimbahera', N'24.62 N', N'74.68 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (773, N'Nokha', N'27.60 N', N'73.42 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (774, N'Pali', N'25.79 N', N'73.32 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (775, N'Rajsamand', N'25.07 N', N'73.88 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (776, N'Ratangarh', N'28.09 N', N'74.60 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (777, N'Sardarshahr', N'28.45 N', N'74.48 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (778, N'Sawai Madhopur', N'26.03 N', N'76.34 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (779, N'Sikar', N'27.61 N', N'75.13 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (780, N'Sujangarh', N'27.70 N', N'74.46 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (781, N'Suratgarh', N'29.32 N', N'73.90 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (782, N'Tonk', N'26.17 N', N'75.78 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (783, N'Udaipur', N'24.58 N', N'73.69 E', N'Rajasthan')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (784, N'Alandur', N'13.03 N', N'80.23 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (785, N'Ambattur', N'13.11 N', N'80.17 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (786, N'Ambur', N'12.80 N', N'78.72 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (787, N'Arakonam', N'13.08 N', N'79.67 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (788, N'Arani', N'12.68 N', N'79.28 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (789, N'Aruppukkottai', N'9.51 N', N'78.09 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (790, N'Attur', N'11.60 N', N'78.60 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (791, N'Avadi', N'13.12 N', N'80.11 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (792, N'Avaniapuram', N'9.86 N', N'78.12 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (793, N'Bodinayakkanur', N'10.01 N', N'77.35 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (794, N'Chengalpattu', N'12.70 N', N'79.97 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (795, N'Dharapuram', N'10.74 N', N'77.52 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (796, N'Dharmapuri', N'12.13 N', N'78.16 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (797, N'Dindigul', N'10.36 N', N'77.97 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (798, N'Erode', N'11.35 N', N'77.73 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (799, N'Gopichettipalaiyam', N'11.46 N', N'77.43 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (800, N'Gudalur', N'11.76 N', N'79.75 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (801, N'Gudiyattam', N'12.95 N', N'78.86 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (802, N'Hosur', N'12.72 N', N'77.82 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (803, N'Idappadi', N'11.58 N', N'77.85 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (804, N'Kadayanallur', N'9.08 N', N'77.35 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (805, N'Kambam', N'9.74 N', N'77.28 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (806, N'Kanchipuram', N'12.84 N', N'79.70 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (807, N'Karur', N'10.96 N', N'78.07 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (808, N'Kavundampalaiyam', N'11.05 N', N'76.92 E', N'Tamil Nadu')
GO
print 'Processed 800 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (809, N'Kovilpatti', N'9.19 N', N'77.86 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (810, N'Koyampattur', N'11.01 N', N'76.96 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (811, N'Krishnagiri', N'12.54 N', N'78.21 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (812, N'Kumarapalaiyam', N'11.44 N', N'77.73 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (813, N'Kumbakonam', N'10.97 N', N'79.38 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (814, N'Kuniyamuthur', N'10.98 N', N'76.95 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (815, N'Kurichi', N'10.92 N', N'76.96 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (816, N'Madhavaram', N'13.02 N', N'80.26 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (817, N'Madras', N'13.09 N', N'80.27 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (818, N'Madurai', N'9.92 N', N'78.12 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (819, N'Maduravoyal', N'', N'', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (820, N'Mannargudi', N'10.67 N', N'79.45 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (821, N'Mayiladuthurai', N'11.11 N', N'79.65 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (822, N'Mettupalayam', N'11.30 N', N'76.94 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (823, N'Mettur', N'11.80 N', N'77.80 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (824, N'Nagapattinam', N'10.80 N', N'79.84 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (825, N'Nagercoil', N'8.18 N', N'77.43 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (826, N'Namakkal', N'11.23 N', N'78.17 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (827, N'Nerkunram', N'13.04 N', N'80.26 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (828, N'Neyveli', N'11.62 N', N'79.48 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (829, N'Pallavaram', N'12.99 N', N'80.16 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (830, N'Pammal', N'12.97 N', N'80.11 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (831, N'Pannuratti', N'11.78 N', N'79.55 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (832, N'Paramakkudi', N'9.54 N', N'78.59 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (833, N'Pattukkottai', N'10.43 N', N'79.31 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (834, N'Pollachi', N'10.67 N', N'77.00 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (835, N'Pudukkottai', N'10.39 N', N'78.82 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (836, N'Puliyankudi', N'9.18 N', N'77.40 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (837, N'Punamalli', N'13.05 N', N'80.11 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (838, N'Rajapalaiyam', N'9.46 N', N'77.55 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (839, N'Ramanathapuram', N'9.37 N', N'78.83 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (840, N'Salem', N'11.67 N', N'78.16 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (841, N'Sankarankoil', N'9.17 N', N'77.54 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (842, N'Sivakasi', N'9.46 N', N'77.79 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (843, N'Srivilliputtur', N'9.52 N', N'77.63 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (844, N'Tambaram', N'12.93 N', N'80.12 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (845, N'Tenkasi', N'8.96 N', N'77.31 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (846, N'Thanjavur', N'10.79 N', N'79.13 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (847, N'Theni Allinagaram', N'10.02 N', N'77.48 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (848, N'Thiruthangal', N'9.48 N', N'77.83 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (849, N'Thiruvarur', N'10.78 N', N'79.64 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (850, N'Thuthukkudi', N'8.81 N', N'78.14 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (851, N'Tindivanam', N'12.24 N', N'79.65 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (852, N'Tiruchchirappalli', N'10.81 N', N'78.69 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (853, N'Tiruchengode', N'11.38 N', N'77.90 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (854, N'Tirunelveli', N'8.73 N', N'77.69 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (855, N'Tirupathur', N'12.50 N', N'78.57 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (856, N'Tiruppur', N'11.09 N', N'77.35 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (857, N'Tiruvannamalai', N'12.24 N', N'79.07 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (858, N'Tiruvottiyur', N'13.16 N', N'80.29 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (859, N'Udagamandalam', N'11.42 N', N'76.69 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (860, N'Udumalaipettai', N'10.58 N', N'77.24 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (861, N'Valparai', N'10.38 N', N'76.99 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (862, N'Vaniyambadi', N'12.69 N', N'78.60 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (863, N'Velampalaiyam', N'', N'', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (864, N'Velluru', N'12.92 N', N'79.13 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (865, N'Viluppuram', N'11.95 N', N'79.49 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (866, N'Virappanchatram', N'11.40 N', N'77.70 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (867, N'Virudhachalam', N'11.51 N', N'79.32 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (868, N'Virudunagar', N'9.59 N', N'77.95 E', N'Tamil Nadu')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (869, N'Agartala', N'23.84 N', N'91.27 E', N'Tripura')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (870, N'Agartala MCl', N'', N'', N'Tripura')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (871, N'Badharghat', N'', N'', N'Tripura')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (872, N'Agra', N'27.19 N', N'78.01 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (873, N'Aligarh', N'27.89 N', N'78.06 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (874, N'Allahabad', N'25.45 N', N'81.84 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (875, N'Amroha', N'28.91 N', N'78.46 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (876, N'Aonla', N'28.28 N', N'79.15 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (877, N'Auraiya', N'26.47 N', N'79.50 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (878, N'Ayodhya', N'26.80 N', N'82.20 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (879, N'Azamgarh', N'26.07 N', N'83.18 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (880, N'Baheri', N'28.78 N', N'79.50 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (881, N'Bahraich', N'27.58 N', N'81.59 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (882, N'Ballia', N'25.76 N', N'84.15 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (883, N'Balrampur', N'27.43 N', N'82.18 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (884, N'Banda', N'25.48 N', N'80.33 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (885, N'Baraut', N'29.10 N', N'77.26 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (886, N'Bareli', N'28.36 N', N'79.41 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (887, N'Basti', N'26.80 N', N'82.74 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (888, N'Behta Hajipur', N'', N'', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (889, N'Bela', N'25.92 N', N'81.99 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (890, N'Bhadohi', N'25.40 N', N'82.56 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (891, N'Bijnor', N'29.38 N', N'78.13 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (892, N'Bisalpur', N'28.30 N', N'79.80 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (893, N'Biswan', N'27.50 N', N'81.00 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (894, N'Budaun', N'28.04 N', N'79.12 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (895, N'Bulandshahr', N'28.41 N', N'77.85 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (896, N'Chandausi', N'28.46 N', N'78.78 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (897, N'Chandpur', N'29.14 N', N'78.27 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (898, N'Chhibramau', N'27.15 N', N'79.52 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (899, N'Chitrakut Dham', N'25.20 N', N'80.84 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (900, N'Dadri', N'28.57 N', N'77.55 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (901, N'Deoband', N'29.70 N', N'77.67 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (902, N'Deoria', N'26.51 N', N'83.78 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (903, N'Etah', N'27.57 N', N'78.64 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (904, N'Etawah', N'26.78 N', N'79.01 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (905, N'Faizabad', N'26.78 N', N'82.14 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (906, N'Faridpur', N'28.22 N', N'79.53 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (907, N'Farrukhabad', N'27.40 N', N'79.57 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (908, N'Fatehpur', N'25.93 N', N'80.81 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (909, N'Firozabad', N'27.15 N', N'78.39 E', N'Uttar Pradesh')
GO
print 'Processed 900 total records'
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (910, N'Gajraula', N'28.85 N', N'78.23 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (911, N'Ganga Ghat', N'26.52 N', N'80.45 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (912, N'Gangoh', N'29.77 N', N'77.25 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (913, N'Ghaziabad', N'28.66 N', N'77.41 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (914, N'Ghazipur', N'25.59 N', N'83.59 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (915, N'Gola Gokarannath', N'28.08 N', N'80.47 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (916, N'Gonda', N'27.14 N', N'81.95 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (917, N'Gorakhpur', N'26.76 N', N'83.36 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (918, N'Hapur', N'28.73 N', N'77.77 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (919, N'Hardoi', N'27.42 N', N'80.12 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (920, N'Hasanpur', N'28.72 N', N'78.28 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (921, N'Hathras', N'27.60 N', N'78.04 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (922, N'Jahangirabad', N'28.42 N', N'78.10 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (923, N'Jalaun', N'26.15 N', N'79.35 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (924, N'Jaunpur', N'25.76 N', N'82.69 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (925, N'Jhansi', N'25.45 N', N'78.56 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (926, N'Kadi', N'23.31 N', N'72.33 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (927, N'Kairana', N'29.40 N', N'77.20 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (928, N'Kannauj', N'27.06 N', N'79.91 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (929, N'Kanpur', N'26.47 N', N'80.33 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (930, N'Kanpur Cantonment', N'26.50 N', N'80.28 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (931, N'Kasganj', N'27.81 N', N'78.63 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (932, N'Khatauli', N'29.28 N', N'77.72 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (933, N'Khora', N'', N'', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (934, N'Khurja', N'28.26 N', N'77.85 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (935, N'Kiratpur', N'29.52 N', N'78.20 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (936, N'Kosi Kalan', N'27.80 N', N'77.44 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (937, N'Laharpur', N'27.72 N', N'80.90 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (938, N'Lakhimpur', N'27.95 N', N'80.78 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (939, N'Lakhnau', N'26.85 N', N'80.92 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (940, N'Lakhnau Cantonment', N'26.81 N', N'80.97 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (941, N'Lalitpur', N'24.70 N', N'78.41 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (942, N'Loni', N'28.75 N', N'77.28 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (943, N'Mahoba', N'25.30 N', N'79.87 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (944, N'Mainpuri', N'27.24 N', N'79.02 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (945, N'Mathura', N'27.50 N', N'77.68 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (946, N'Mau', N'25.96 N', N'83.56 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (947, N'Mauranipur', N'25.24 N', N'79.13 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (948, N'Mawana', N'29.11 N', N'77.91 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (949, N'Mirat', N'28.99 N', N'77.70 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (950, N'Mirat Cantonment', N'29.02 N', N'77.67 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (951, N'Mirzapur', N'25.16 N', N'82.56 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (952, N'Modinagar', N'28.92 N', N'77.62 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (953, N'Moradabad', N'28.84 N', N'78.76 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (954, N'Mubarakpur', N'26.09 N', N'83.28 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (955, N'Mughal Sarai', N'25.30 N', N'83.12 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (956, N'Muradnagar', N'28.78 N', N'77.50 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (957, N'Muzaffarnagar', N'29.48 N', N'77.69 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (958, N'Nagina', N'29.45 N', N'78.43 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (959, N'Najibabad', N'29.62 N', N'78.33 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (960, N'Nawabganj', N'26.94 N', N'81.19 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (961, N'Noida', N'28.58 N', N'77.33 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (962, N'Obra', N'24.42 N', N'82.98 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (963, N'Orai', N'25.99 N', N'79.45 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (964, N'Pilibhit', N'28.64 N', N'79.81 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (965, N'Pilkhuwa', N'28.72 N', N'77.65 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (966, N'Rae Bareli', N'26.23 N', N'81.23 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (967, N'Ramgarh Nagla Kothi', N'', N'', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (968, N'Rampur', N'28.82 N', N'79.02 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (969, N'Rath', N'25.58 N', N'79.57 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (970, N'Renukut', N'24.20 N', N'83.03 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (971, N'Saharanpur', N'29.97 N', N'77.54 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (972, N'Sahaswan', N'28.08 N', N'78.74 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (973, N'Sambhal', N'28.59 N', N'78.56 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (974, N'Sandila', N'27.08 N', N'80.52 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (975, N'Shahabad', N'27.65 N', N'79.95 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (976, N'Shahjahanpur', N'27.88 N', N'79.90 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (977, N'Shamli', N'29.46 N', N'77.31 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (978, N'Sherkot', N'29.35 N', N'78.58 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (979, N'Shikohabad', N'27.12 N', N'78.58 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (980, N'Sikandarabad', N'28.44 N', N'77.69 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (981, N'Sitapur', N'27.57 N', N'80.69 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (982, N'Sukhmalpur Nizamabad', N'', N'', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (983, N'Sultanpur', N'26.26 N', N'82.06 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (984, N'Tanda', N'26.55 N', N'82.65 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (985, N'Tilhar', N'27.98 N', N'79.73 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (986, N'Tundla', N'27.20 N', N'78.28 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (987, N'Ujhani', N'28.02 N', N'79.02 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (988, N'Unnao', N'26.55 N', N'80.49 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (989, N'Varanasi', N'25.32 N', N'83.01 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (990, N'Vrindavan', N'27.58 N', N'77.70 E', N'Uttar Pradesh')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (991, N'Dehra Dun', N'30.34 N', N'78.05 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (992, N'Dehra Dun Cantonment', N'30.34 N', N'77.97 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (993, N'Gola Range', N'', N'', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (994, N'Haldwani', N'29.23 N', N'79.52 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (995, N'Haridwar', N'29.98 N', N'78.16 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (996, N'Kashipur', N'29.22 N', N'78.96 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (997, N'Pithoragarh', N'29.58 N', N'80.22 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (998, N'Rishikesh', N'30.12 N', N'78.29 E', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (999, N'Rudrapur', N'', N'', N'Uttaranchal')
INSERT [dbo].[tblCity] ([city_id], [city_name], [latitude], [longitude], [state]) VALUES (1000, N'Rurki', N'29.87 N', N'77.89 E', N'Uttaranchal')
/****** Object:  Table [dbo].[tblBodyType]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBodyType](
	[Body_Type_Code] [varchar](10) NOT NULL,
	[Body_Type] [varchar](50) NULL,
 CONSTRAINT [PK_tblBodyType] PRIMARY KEY CLUSTERED 
(
	[Body_Type_Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblBodyType] ([Body_Type_Code], [Body_Type]) VALUES (N'Athletic', N'Athletic')
INSERT [dbo].[tblBodyType] ([Body_Type_Code], [Body_Type]) VALUES (N'Average', N'Average')
INSERT [dbo].[tblBodyType] ([Body_Type_Code], [Body_Type]) VALUES (N'Heavy', N'Heavy')
INSERT [dbo].[tblBodyType] ([Body_Type_Code], [Body_Type]) VALUES (N'Slim', N'Slim')
INSERT [dbo].[tblBodyType] ([Body_Type_Code], [Body_Type]) VALUES (N'Stout', N'Stout')
INSERT [dbo].[tblBodyType] ([Body_Type_Code], [Body_Type]) VALUES (N'Thin', N'Thin')
/****** Object:  Table [dbo].[tblBodyComplexion]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBodyComplexion](
	[Complexion_Id] [varchar](10) NOT NULL,
	[Complexion] [varchar](50) NULL,
 CONSTRAINT [PK_tblBodyComplexion] PRIMARY KEY CLUSTERED 
(
	[Complexion_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblBodyComplexion] ([Complexion_Id], [Complexion]) VALUES (N'Dark', N'Dark')
INSERT [dbo].[tblBodyComplexion] ([Complexion_Id], [Complexion]) VALUES (N'Fair', N'Fair')
INSERT [dbo].[tblBodyComplexion] ([Complexion_Id], [Complexion]) VALUES (N'Very Fair', N'Very Fair')
INSERT [dbo].[tblBodyComplexion] ([Complexion_Id], [Complexion]) VALUES (N'Wheatish', N'Wheatish')
INSERT [dbo].[tblBodyComplexion] ([Complexion_Id], [Complexion]) VALUES (N'WhitBrwn', N'Wheatish Brown')
/****** Object:  Table [dbo].[tblAlbum]    Script Date: 02/03/2016 23:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAlbum](
	[PhotoAlbumId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [varchar](10) NOT NULL,
	[ProfilePhoto] [varchar](50) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[Permission] [int] NOT NULL,
	[FolderName] [varchar](50) NOT NULL,
	[AlbumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblAlbum] PRIMARY KEY CLUSTERED 
(
	[PhotoAlbumId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAlbum] ON
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (7, N'NILEM0003', N'MaleProfile.jpg', CAST(0xFF360B00 AS Date), 0, N'NILEM0003', N'NILEM0003')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (8, N'KHGKM0002', N'MaleProfile.jpg', CAST(0xFD360B00 AS Date), 0, N'KHGKM0002', N'KHGKM0002')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (9, N'LOLUM0003', N'MaleProfile.jpg', CAST(0xFD360B00 AS Date), 0, N'LOLUM0003', N'LOLUM0003')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (10, N'SHALM0004', N'SHALM0004/Student-Of-The-Year-Reviews.jpg', CAST(0xFD360B00 AS Date), 0, N'SHALM0004', N'SHALM0004')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (11, N'RAVIM0005', N'RAVIM0005/20130331_210427.jpg', CAST(0xFD360B00 AS Date), 3, N'RAVIM0005', N'RAVIM0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (12, N'ALKAF0005', N'ALKAF0005/20130331_210716.jpg', CAST(0xFE360B00 AS Date), 0, N'ALKAF0005', N'ALKAF0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (13, N'ACTIM0005', N'ACTIM0005/Jellyfish.jpg', CAST(0xFF360B00 AS Date), 0, N'ACTIM0005', N'ACTIM0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (14, N'RAMEM0005', N'MaleProfile.jpg', CAST(0x06370B00 AS Date), 0, N'RAMEM0005', N'RAMEM0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (15, N'ABHIM0005', N'ABHIM0005/Penguins.jpg', CAST(0x09370B00 AS Date), 0, N'ABHIM0005', N'ABHIM0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (16, N'MOHAF0005', N'FeMaleProfile.jpg', CAST(0x0A370B00 AS Date), 0, N'MOHAF0005', N'MOHAF0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (17, N'KHGKM0002', N'MaleProfile.jpg', CAST(0x0A370B00 AS Date), 0, N'KHGKM0002', N'KHGKM0002')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (18, N'MOLIF0005', N'MOLIF0005/Koala.jpg', CAST(0x0A370B00 AS Date), 0, N'MOLIF0005', N'MOLIF0005')
INSERT [dbo].[tblAlbum] ([PhotoAlbumId], [MemberId], [ProfilePhoto], [CreatedDate], [Permission], [FolderName], [AlbumName]) VALUES (19, N'RAVIM0005', N'RAVIM0005/20130331_210427.jpg', CAST(0x0B370B00 AS Date), 3, N'RAVIM0005', N'RAVIM0005')
SET IDENTITY_INSERT [dbo].[tblAlbum] OFF
/****** Object:  StoredProcedure [dbo].[SP_Select_Inbox_PhotoReqest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Select_Inbox_PhotoReqest]
	
	@injection varchar(500),
	@gender varchar(20),
	@RequestFor varchar(30)
AS
BEGIN
declare @query varchar(1000) 
if @RequestFor='REQInbox' 
BEGIN
	if @gender='Female'
		begin
		set @query='SELECT DISTINCT 
                      V_Basic_Search_Groom.Member_Name, V_Basic_Search_Groom.Member_Id, tblPhotoRequest.SenderId, tblPhotoRequest.Date, case when  tblPhotoRequest.Status=0 then ''Pending'' else case when tblPhotoRequest.Status=1 then ''Waiting'' else ''accepted'' end end as status , tblPhotoRequest.Status as StatusCode,
                    V_Basic_Search_Groom.Profession,  V_Basic_Search_Groom.Height, V_Basic_Search_Groom.Age, V_Basic_Search_Groom.Education, V_Basic_Search_Groom.city_name, 
                  V_Basic_Search_Groom.state,    V_Basic_Search_Groom.Cast_Name, V_Basic_Search_Groom.Religion,case when V_Basic_Search_Groom.Permission>0 then  V_Basic_Search_Groom.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto 
FROM         V_Basic_Search_Groom ,tblPhotoRequest where V_Basic_Search_Groom.Member_Id = tblPhotoRequest.SenderId '+ @injection
                      exec(@query)
		end
	else
	begin
	set @query='SELECT DISTINCT 
                      V_Basic_Search_Bride.Member_Name, V_Basic_Search_Bride.Member_Id, tblPhotoRequest.SenderId, tblPhotoRequest.Date, case when  tblPhotoRequest.Status=0 then ''Pending'' else case when tblPhotoRequest.Status=1 then ''Waiting'' else ''accepted'' end end as status , tblPhotoRequest.Status as StatusCode,
                    V_Basic_Search_Bride.Profession,  V_Basic_Search_Bride.Height, V_Basic_Search_Bride.Age, V_Basic_Search_Bride.Education, V_Basic_Search_Bride.city_name, 
                  V_Basic_Search_Bride.state,    V_Basic_Search_Bride.Cast_Name, V_Basic_Search_Bride.Religion,case when V_Basic_Search_Bride.Permission>0 then  V_Basic_Search_Bride.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto 
FROM         V_Basic_Search_Bride ,tblPhotoRequest where V_Basic_Search_Bride.Member_Id = tblPhotoRequest.SenderId  '+ @injection
exec(@query)
	end
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Inbox_Intrests]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Select_Inbox_Intrests]
	
	@injection varchar(500),
	@gender varchar(20),
	@RequestFor varchar(30)
AS
BEGIN
declare @query varchar(1000) 
if @RequestFor='REQInbox' 
BEGIN
	if @gender='Female'
		begin
		set @query='SELECT DISTINCT 
                      V_Basic_Search_Groom.Member_Name, V_Basic_Search_Groom.Member_Id, tblInterest.Sender_Id, tblInterest.Date, case when  tblInterest.Status=0 then ''Pending'' else case when tblInterest.Status=1 then ''Waiting'' else ''accepted'' end end as status , tblInterest.Status as StatusCode,
                    V_Basic_Search_Groom.Profession,  V_Basic_Search_Groom.Height, V_Basic_Search_Groom.Age, V_Basic_Search_Groom.Education, V_Basic_Search_Groom.city_name, 
                  V_Basic_Search_Groom.state,    V_Basic_Search_Groom.Cast_Name, V_Basic_Search_Groom.Religion,case when V_Basic_Search_Groom.Permission>0 then  V_Basic_Search_Groom.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto 
FROM         V_Basic_Search_Groom ,tblInterest where V_Basic_Search_Groom.Member_Id = tblInterest.Sender_Id '+ @injection
                      exec(@query)
		end
	else
	begin
	set @query='SELECT DISTINCT 
                      V_Basic_Search_Bride.Member_Name, V_Basic_Search_Bride.Member_Id, tblInterest.Sender_Id, tblInterest.Date, case when  tblInterest.Status=0 then ''Pending'' else case when tblInterest.Status=1 then ''Waiting'' else ''accepted'' end end as status , tblInterest.Status as StatusCode,
                    V_Basic_Search_Bride.Profession,  V_Basic_Search_Bride.Height, V_Basic_Search_Bride.Age, V_Basic_Search_Bride.Education, V_Basic_Search_Bride.city_name, 
                  V_Basic_Search_Bride.state,    V_Basic_Search_Bride.Cast_Name, V_Basic_Search_Bride.Religion,case when V_Basic_Search_Bride.Permission>0 then  V_Basic_Search_Bride.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto 
FROM         V_Basic_Search_Bride ,tblInterest where V_Basic_Search_Bride.Member_Id = tblInterest.Sender_Id  '+ @injection
exec(@query)
	end
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GuestUserSearch]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GuestUserSearch]

@ConditionQuery nvarchar(4000) ,
@Gender nvarchar(10) 
AS
Declare @SQLquery NVarchar(4000) 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
if @Gender<>'Bried' 

set  @SQLquery= ' SELECT   distinct  tblMember.Member_Id, UPPER(tblMember.Member_Name) AS Member_Name, tblProfession_Child.Profession, tblReligion.Religion, tblCast.Cast_Name, 
                      tblGroom.Weight, tblGroom.Height,(SUBSTRING(tblGroom.About_Me, 1, 30) + SUBSTRING(tblGroom.About_Me, 30, CHARINDEX('' '', SUBSTRING(About_Me, 
                      30, 20))))+''..'' AS About_Me, DATEDIFF(hour, tblMember.Dob, GETDATE()) / 8766 AS Age, tblEducation.Education, case when tblAlbum.Permission>0 then  tblAlbum.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto, tblCity.city_name, tblCity.state, 
                      tblHeight.Ft_Cm
FROM         tblMember INNER JOIN
                      tblGroom ON tblMember.Member_Id = tblGroom.Member_Id INNER JOIN
                      tblProfession_Child ON tblGroom.Profession_Id = tblProfession_Child.Profession_Id INNER JOIN
                      tblCast ON tblGroom.Cast_Id = tblCast.Cast_Id INNER JOIN
                      tblReligion ON tblCast.Religion_Id = tblReligion.Religion_Id INNER JOIN
                      tblEducation ON tblGroom.Educational_Qualification = tblEducation.Education_Id INNER JOIN
                      tblAlbum ON tblMember.Member_Id = tblAlbum.MemberId INNER JOIN
                      tblCity ON tblGroom.City_Id = tblCity.city_id INNER JOIN
                      tblHeight ON tblGroom.Height = tblHeight.Height
WHERE     (1 = 1) '+@ConditionQuery                  
                      
else
set  @SQLquery=' select distinct tblMember.Member_Id, UPPER(tblMember.Member_Name) AS Member_Name, tblProfession_Child.Profession, tblReligion.Religion, tblCast.Cast_Name, 
                      tblBride.Weight, tblBride.Height,(SUBSTRING(tblBride.About_Me, 1, 30) + SUBSTRING(tblBride.About_Me, 30, CHARINDEX('' '', SUBSTRING(About_Me, 
                      30, 20))))+''..'' AS About_Me, DATEDIFF(hour, tblMember.Dob, GETDATE()) / 8766 AS Age, tblEducation.Education, case when tblAlbum.Permission>0 then  tblAlbum.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto, tblCity.city_name, tblCity.state, 
                      tblHeight.Ft_Cm
FROM         tblMember INNER JOIN
                      tblBride ON tblMember.Member_Id = tblBride.Member_Id INNER JOIN
                      tblProfession_Child ON tblBride.Profession_Id = tblProfession_Child.Profession_Id INNER JOIN
                      tblCast ON tblBride.Cast_Id = tblCast.Cast_Id INNER JOIN
                      tblReligion ON tblCast.Religion_Id = tblReligion.Religion_Id INNER JOIN
                      tblEducation ON tblBride.Educational_Qualification = tblEducation.Education_Id INNER JOIN
                      tblAlbum ON tblMember.Member_Id = tblAlbum.MemberId INNER JOIN
                      tblCity ON tblBride.City_Id = tblCity.city_id INNER JOIN
                      tblHeight ON tblBride.Height = tblHeight.Height
WHERE     (1 = 1)' +@ConditionQuery
              
  
   exec(@SQLquery)                   
END
GO
/****** Object:  Table [dbo].[tblPlan]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPlan](
	[PlanId] [varchar](50) NOT NULL,
	[PlanName] [varchar](50) NOT NULL,
	[ContactDetails] [int] NOT NULL,
	[PlanDuration] [int] NOT NULL,
	[PlanAmount] [int] NOT NULL,
 CONSTRAINT [PK_tblPlan] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblPlan] ([PlanId], [PlanName], [ContactDetails], [PlanDuration], [PlanAmount]) VALUES (N'1000R2M25C', N'1000R2M25C', 25, 60, 1000)
INSERT [dbo].[tblPlan] ([PlanId], [PlanName], [ContactDetails], [PlanDuration], [PlanAmount]) VALUES (N'500R1M10C', N'500R1M10C', 10, 30, 500)
INSERT [dbo].[tblPlan] ([PlanId], [PlanName], [ContactDetails], [PlanDuration], [PlanAmount]) VALUES (N'FREE', N'Free', 0, 0, 0)
/****** Object:  Table [dbo].[tblPhotoRequest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPhotoRequest](
	[ReqId] [int] NOT NULL,
	[SenderId] [varchar](50) NULL,
	[ReceiverId] [varchar](50) NULL,
	[Date] [date] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tblPhotoRequest] PRIMARY KEY CLUSTERED 
(
	[ReqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMother_Tongue]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMother_Tongue](
	[Mother_Tongue] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblMother_Tongue] PRIMARY KEY CLUSTERED 
(
	[Mother_Tongue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Assamese')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Bengali')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Coorgi')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Dogri')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'English')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Garhwali')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Gujarati')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Hindi')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Kannada')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Kashmiri')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Konkani')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Kumaoni')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Kutchi')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Maithili')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Malayalam')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Manipuri')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Marathi')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Marwari')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Nepali')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Oriya')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Punjabi')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Sindhi')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Tamil')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Telugu')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Tulu')
INSERT [dbo].[tblMother_Tongue] ([Mother_Tongue]) VALUES (N'Urdu')
/****** Object:  Table [dbo].[tblMessage]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SenderID] [varchar](10) NULL,
	[RechiverID] [varchar](10) NULL,
	[MSGSubject] [varchar](150) NULL,
	[MSGBody] [varchar](max) NULL,
	[Date] [date] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tblMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblMessage] ON
INSERT [dbo].[tblMessage] ([ID], [SenderID], [RechiverID], [MSGSubject], [MSGBody], [Date], [Status]) VALUES (1, N'ALKAF0005', N'RAVIM0005', N'kjkbjkjb', N'jkljbklj<br />', CAST(0x1E370B00 AS Date), -1)
INSERT [dbo].[tblMessage] ([ID], [SenderID], [RechiverID], [MSGSubject], [MSGBody], [Date], [Status]) VALUES (2, N'ALKAF0005', N'RAVIM0005', N'kjkbjkjb', N'jkljbklj<br />', CAST(0x1E370B00 AS Date), 0)
INSERT [dbo].[tblMessage] ([ID], [SenderID], [RechiverID], [MSGSubject], [MSGBody], [Date], [Status]) VALUES (3, N'RAVIM0005', N'ALKAF0005', N'kjkbjkjb', N'jdsdvsdvsdvf<br />', CAST(0x1E370B00 AS Date), 0)
INSERT [dbo].[tblMessage] ([ID], [SenderID], [RechiverID], [MSGSubject], [MSGBody], [Date], [Status]) VALUES (4, N'RAVIM0005', N'ALKAF0005', N'kjkbjkjb', N'<p>dfdsg</p>', CAST(0x1E370B00 AS Date), 0)
INSERT [dbo].[tblMessage] ([ID], [SenderID], [RechiverID], [MSGSubject], [MSGBody], [Date], [Status]) VALUES (5, N'ALKAF0005', N'ABHIM0005', N'dsffdf', N'Hiiiiiii<br />', CAST(0x1E370B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[tblMessage] OFF
/****** Object:  Table [dbo].[tblMember]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMember](
	[Member_Id] [varchar](10) NOT NULL,
	[Member_Name] [varchar](100) NULL,
	[Gender] [varchar](6) NULL,
	[Mobile] [numeric](11, 0) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Dob] [datetime] NULL,
	[Profile_Submitted_By] [varchar](50) NULL,
	[IsVerified] [char](1) NULL,
 CONSTRAINT [PK_tblMemver] PRIMARY KEY CLUSTERED 
(
	[Member_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'ABHIM0005', N'ABHISHEK', N'Male', CAST(8881111111 AS Numeric(11, 0)), N'123@gmail.com', N'8880583956', CAST(0x00007B4400000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'ACTIM0005', N'active', N'Male', CAST(9999999999 AS Numeric(11, 0)), N'b_deb@yahoo.com', N'1234', CAST(0x00007D9800000000 AS DateTime), N'Sibling', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'ALKAF0005', N'ALKA SINGH', N'Female', CAST(8088982202 AS Numeric(11, 0)), N'alkasingh7x@gmail.com', N'10jqsca002', CAST(0x00007EF300000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'AMANM0005', N'aman', N'Male', CAST(8888888888 AS Numeric(11, 0)), N'babul_drock@yahoo.com', N'1234', CAST(0x00007C5800000000 AS DateTime), N'Self', N'N')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'KHGKM0002', N'khgkjhg', N'Male', CAST(8999999000 AS Numeric(11, 0)), N'aaaa@gmail.com', N'12345', CAST(0x00007A0500000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'LOLUM0003', N'LOLu', N'Male', CAST(9807988877 AS Numeric(11, 0)), N'gggg@gmail.com', N'12345', CAST(0x0000723F00000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'MOHAF0005', N'MOHANI', N'Female', CAST(9111111111 AS Numeric(11, 0)), N'12345@gmail.com', N'12345', CAST(0x00007B4400000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'MOHAM0005', N'mohan', N'Male', CAST(9999949999 AS Numeric(11, 0)), N'mo@yahoo.com', N'12345', CAST(0x00007F1900000000 AS DateTime), N'Self', N'N')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'MOLIF0005', N'molisha', N'Female', CAST(8877653257 AS Numeric(11, 0)), N'moli@yahoo.com', N'moli', CAST(0x0000798D00000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'NILEM0003', N'nilesh', N'Male', CAST(8676543221 AS Numeric(11, 0)), N'aaaa@gmail.com', N'123456', CAST(0x0000574B00000000 AS DateTime), N'Parent/Guardian', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'NILUF0005', N'nilu', N'Female', CAST(7000000000 AS Numeric(11, 0)), N'nilu@gmail.com', N'12345', CAST(0x00007B5900000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'RAMEM0005', N'ramesh kumar', N'Male', CAST(9887901023 AS Numeric(11, 0)), N'ashokjailapia@gmail.com', N'123456', CAST(0x00007B0F00000000 AS DateTime), N'Friend', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'RAVIM0005', N'ravi', N'Male', CAST(9341171997 AS Numeric(11, 0)), N'plmeena01@gmail.com', N'147258', CAST(0x00007B4D00000000 AS DateTime), N'Self', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'SHALM0004', N'SHALI', N'Male', CAST(9999999991 AS Numeric(11, 0)), N'111@gmail.com', N'1212', CAST(0x00007B4400000000 AS DateTime), N'Parent/Guardian', N'Y')
INSERT [dbo].[tblMember] ([Member_Id], [Member_Name], [Gender], [Mobile], [Email], [Password], [Dob], [Profile_Submitted_By], [IsVerified]) VALUES (N'VIVEM0005', N'vivek', N'Male', CAST(8147172468 AS Numeric(11, 0)), N'vivektiwari97701@gmail.com', N'97701', CAST(0x0000802000000000 AS DateTime), N'Self', N'N')
/****** Object:  Table [dbo].[tblLogs]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogs](
	[ID] [int] NOT NULL,
	[Member_Id] [varchar](10) NOT NULL,
	[LastLoginStatus] [varchar](20) NULL,
	[LastLoginIP] [varchar](15) NULL,
	[LastLoginDate] [date] NULL,
 CONSTRAINT [PK_tblLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblInterest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblInterest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_Id] [varchar](10) NULL,
	[Receiver_Id] [varchar](10) NULL,
	[Date] [date] NULL,
	[Msg_Id] [varchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tblInterest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblInterest] ON
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (14, N'KHGKM0002', N'ALKAF0005', CAST(0x0B370B00 AS Date), N'Hello', 2)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (15, N'ALKAF0005', N'KHGKM0002', CAST(0x0B370B00 AS Date), N'Hello', 0)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (16, N'ALKAF0005', N'RAVIM0005', CAST(0x0B370B00 AS Date), N'Hello', 4)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (17, N'RAVIM0005', N'ALKAF0005', CAST(0x0C370B00 AS Date), N'Hello', 4)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (18, N'ALKAF0005', N'ACTIM0005', CAST(0x0C370B00 AS Date), N'Hello', 0)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (19, N'ALKAF0005', N'RAMEM0005', CAST(0x0C370B00 AS Date), N'Hello', 0)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (20, N'ALKAF0005', N'SHALM0004', CAST(0x0F370B00 AS Date), N'Hello', 0)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (21, N'SHALM0004', N'ALKAF0005', CAST(0x0F370B00 AS Date), N'Hello', 2)
INSERT [dbo].[tblInterest] ([Id], [Sender_Id], [Receiver_Id], [Date], [Msg_Id], [Status]) VALUES (22, N'SHALM0004', N'MOLIF0005', CAST(0x0F370B00 AS Date), N'Hello', 4)
SET IDENTITY_INSERT [dbo].[tblInterest] OFF
/****** Object:  Table [dbo].[tblHeight]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHeight](
	[Height] [int] NOT NULL,
	[Ft_Cm] [varchar](200) NULL,
 CONSTRAINT [PK_tblHeight] PRIMARY KEY CLUSTERED 
(
	[Height] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (134, N'4 Ft 5 In - 134 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (137, N'4 Ft 6 In - 137 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (139, N'4 Ft 7 In - 139 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (142, N' 4 Ft 8 In - 142 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (144, N'4 Ft 9 In - 144 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (147, N'4 Ft 10 In - 147 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (149, N'4 Ft 11 In - 149 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (152, N'5 Ft - 152 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (154, N'5 Ft 1 In - 154 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (157, N'5 Ft 2 In - 157 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (160, N'5 Ft 3 In - 160 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (162, N'5 Ft 4 In - 162 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (165, N'5 Ft 5 In - 165 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (167, N'5 Ft 6 In - 167 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (170, N'5 Ft 7 In - 170 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (172, N'5 Ft 8 In - 172 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (175, N'5 Ft 9 In - 175 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (177, N'5 Ft 10 In - 177 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (180, N'5 Ft 11 In - 180 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (182, N'6 Ft - 182 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (185, N'6 Ft 1 In - 185 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (187, N'6 Ft 2 In - 187 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (190, N'6 Ft 3 In - 190 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (193, N'6 Ft 4 In - 193 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (195, N'6 Ft 5 In - 195 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (198, N'6 Ft 6 In - 198 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (200, N'6 Ft 7 In - 200 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (203, N'6 Ft 8 In - 203 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (205, N'6 Ft 9 In - 205 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (208, N'6 Ft 10 In - 208 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (210, N'6 Ft 11 In - 210 Cm')
INSERT [dbo].[tblHeight] ([Height], [Ft_Cm]) VALUES (213, N'7 Ft - 213 Cm')
/****** Object:  Table [dbo].[tblPrivecy]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPrivecy](
	[Member_Id] [varchar](10) NOT NULL,
	[Photopermission] [bit] NULL,
	[Contactpermission] [bit] NULL,
	[Profilepermission] [bit] NULL,
 CONSTRAINT [PK_tblPrivecy] PRIMARY KEY CLUSTERED 
(
	[Member_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_MSG_Outbox]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =========================================Id ====
Create PROCEDURE [dbo].[SP_Select_MSG_Outbox](@Member_Id varchar(20),@injection varchar(500))
	-- Add the parameters for the stored procedure here
  
AS
declare @sql varchar(1000)

BEGIN
set @sql='SELECT   distinct  tblMessage.MSGSubject,tblMember.Member_Id,tblMessage.ID, tblMessage.MSGBody, tblMessage.Date, tblAlbum.ProfilePhoto, tblMember.Member_Name, tblMessage.ID
FROM         tblMessage INNER JOIN
                      tblMember ON tblMessage.RechiverID = tblMember.Member_Id INNER JOIN
                      tblAlbum ON tblMember.Member_Id = tblAlbum.MemberId where (1=1) '+@injection
                      
 exec (@sql)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_MSG_Inbox]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =========================================Id ====
CREATE PROCEDURE [dbo].[SP_Select_MSG_Inbox](@Member_Id varchar(20),@injection varchar(500))
	-- Add the parameters for the stored procedure here
  
AS
declare @sql varchar(1000)

BEGIN
set @sql='SELECT   distinct  tblMessage.MSGSubject,tblMember.Member_Id,tblMessage.ID, tblMessage.MSGBody, tblMessage.Date, tblAlbum.ProfilePhoto, tblMember.Member_Name, tblMessage.ID
FROM         tblMessage INNER JOIN
                      tblMember ON tblMessage.SenderID = tblMember.Member_Id INNER JOIN
                      tblAlbum ON tblMember.Member_Id = tblAlbum.MemberId where (1=1) '+@injection
                      
 exec (@sql)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_outbox_Intrests]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Select_outbox_Intrests]
	
	@injection varchar(500),
	@gender varchar(20),
	@RequestFor varchar(30)
AS
BEGIN
declare @query varchar(1000) 
if @RequestFor='REQoutbox' 
BEGIN
	if @gender='Female'
		begin
		set @query='SELECT  distinct
                      V_Basic_Search_Groom.Member_Name, V_Basic_Search_Groom.Member_Id, tblInterest.Sender_Id, tblInterest.Date, case when  tblInterest.Status=0 then ''Pending'' else case when tblInterest.Status=1 then ''Waiting'' else ''accepted'' end end as status , tblInterest.Status as StatusCode,
                    V_Basic_Search_Groom.Profession,  V_Basic_Search_Groom.Height, V_Basic_Search_Groom.Age, V_Basic_Search_Groom.Education, V_Basic_Search_Groom.city_name, 
                  V_Basic_Search_Groom.state,    V_Basic_Search_Groom.Cast_Name, V_Basic_Search_Groom.Religion,case when V_Basic_Search_Groom.Permission>0 then  V_Basic_Search_Groom.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto 
FROM         V_Basic_Search_Groom ,tblInterest where V_Basic_Search_Groom.Member_Id = tblInterest.Receiver_Id '+ @injection
                      exec(@query)
		end
	else
	begin
	set @query='SELECT  distinct
                      V_Basic_Search_Bride.Member_Name, V_Basic_Search_Bride.Member_Id, tblInterest.Sender_Id, tblInterest.Date, case when  tblInterest.Status=0 then ''Pending'' else case when tblInterest.Status=1 then ''Waiting'' else ''accepted'' end end as status , tblInterest.Status as StatusCode,
                    V_Basic_Search_Bride.Profession,  V_Basic_Search_Bride.Height, V_Basic_Search_Bride.Age, V_Basic_Search_Bride.Education, V_Basic_Search_Bride.city_name, 
                  V_Basic_Search_Bride.state,    V_Basic_Search_Bride.Cast_Name, V_Basic_Search_Bride.Religion,case when V_Basic_Search_Bride.Permission>0 then  V_Basic_Search_Bride.ProfilePhoto else ''PhotoLock.png'' end as ProfilePhoto 
FROM         V_Basic_Search_Bride ,tblInterest where V_Basic_Search_Bride.Member_Id = tblInterest.Receiver_Id  '+ @injection

exec(@query)
	end
end
end
GO
/****** Object:  Table [dbo].[tblUser_Plan]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser_Plan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_ID] [varchar](10) NULL,
	[Plan_Id] [varchar](10) NULL,
	[Start_date] [date] NULL,
	[End_date] [date] NULL,
 CONSTRAINT [PK_tblUser_Plan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser_Plan] ON
INSERT [dbo].[tblUser_Plan] ([Id], [Member_ID], [Plan_Id], [Start_date], [End_date]) VALUES (1, N'ALKAF0005', N'1000R2M25C', CAST(0xDF360B00 AS Date), CAST(0xFE360B00 AS Date))
SET IDENTITY_INSERT [dbo].[tblUser_Plan] OFF
/****** Object:  Table [dbo].[tblStates]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStates](
	[State_Id] [varchar](150) NOT NULL,
	[State_name] [varchar](150) NULL,
 CONSTRAINT [PK_tblStates] PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStar]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStar](
	[Star_Id] [varchar](50) NOT NULL,
	[Star_Name] [varchar](100) NULL,
 CONSTRAINT [PK_tblStar] PRIMARY KEY CLUSTERED 
(
	[Star_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'1', N'Anuradha/Anusham/Anizham')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'10', N'Krithika /karthika')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'11', N'makha / Magam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'12', N'Moolam / Moola')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'13', N'Mrigasira / Makayiram')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'14', N'Poorvabadrapada / Puratathi')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'15', N'poorvapalguni / Puram / Pubbhe')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'16', N'Poorvashada / pooradam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'17', N'Punarvasu / Punarpusam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'18', N'Pushya / Poosam / pooyam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'19', N'Revathi')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'2', N'Ardra/ Thiruvathira')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'20', N'Rohini')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'21', N'Shatataraka / Sadayam / Satabhisek')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'22', N'Shravan / Thiruvonam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'23', N'Swati / Chothi')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'24', N'Uttarapalguni / Uthram')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'25', N'Uttarashada / Uthradam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'26', N'Vishaka / Vishakam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'3', N'Ashlesha / Ayilyam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'4', N'Ashwini / Ashwathi')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'5', N'Bharani')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'6', N'Chitra / Chitha')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'7', N'Dhanista / Avittam')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'8', N'Hastha / Atham')
INSERT [dbo].[tblStar] ([Star_Id], [Star_Name]) VALUES (N'9', N'Jyesta / Kettai')
/****** Object:  Table [dbo].[tblSmoke]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSmoke](
	[Smoke_Id] [varchar](10) NOT NULL,
	[Smoke] [varchar](50) NULL,
 CONSTRAINT [PK_tblSmoke] PRIMARY KEY CLUSTERED 
(
	[Smoke_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblSmoke] ([Smoke_Id], [Smoke]) VALUES (N'NO', N'No   ')
INSERT [dbo].[tblSmoke] ([Smoke_Id], [Smoke]) VALUES (N'OCA', N'Occasionally')
INSERT [dbo].[tblSmoke] ([Smoke_Id], [Smoke]) VALUES (N'YES', N'Yes  ')
/****** Object:  Table [dbo].[tblReligion]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReligion](
	[Religion_Id] [varchar](10) NOT NULL,
	[Religion] [varchar](50) NULL,
 CONSTRAINT [PK_tblReligion] PRIMARY KEY CLUSTERED 
(
	[Religion_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'BDT', N'Buddhist')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'CRT', N'Christian')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'HND', N'Hindu')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'JAN', N'Jain')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'JWS', N'Jewish')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'MSL', N'Muslim')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'NO', N'No Religion')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'PRC', N'Parsi')
INSERT [dbo].[tblReligion] ([Religion_Id], [Religion]) VALUES (N'SIK', N'Sikh')
/****** Object:  Table [dbo].[tblRashi]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRashi](
	[Rashi_Id] [varchar](50) NOT NULL,
	[Rashi_Name] [varchar](50) NULL,
 CONSTRAINT [PK_tblRashi] PRIMARY KEY CLUSTERED 
(
	[Rashi_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'1', N'Mesh(Aries)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'10', N'Makar(Capricon)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'11', N'Kumbh(Aquarius)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'12', N'Meen(Pisces)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'2', N'Vrishibha(Taurus)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'3', N'Mithun(Gemini)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'4', N'Kark(Cancer)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'5', N'Simha(Leo)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'6', N'Kanya(Virgo)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'7', N'Tula(Libra)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'8', N'Vrishchik(Scorpio)')
INSERT [dbo].[tblRashi] ([Rashi_Id], [Rashi_Name]) VALUES (N'9', N'Dhanu(Sagittarius)')
/****** Object:  Table [dbo].[tblProfession_Master]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProfession_Master](
	[Profession_Master_Id] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblProfession_Master] PRIMARY KEY CLUSTERED 
(
	[Profession_Master_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Administration / HR')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Agriculture')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Airline / Aviation')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Architecture / design')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Artists / Animators / Web Designers')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Beauty / Fashion / Jewellery Designers')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'BPO / KPO / Customer Support')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Civil Services / Law Enforcement')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Corporate Professionals')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Defence')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Education / Training')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Engineering')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Hotel / Hospitality')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'IT &amp / Software Engineering')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Legal')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Merchant Navy')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Sales &amp / Marketing')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Science')
INSERT [dbo].[tblProfession_Master] ([Profession_Master_Id]) VALUES (N'Student')
/****** Object:  StoredProcedure [dbo].[Add_ExpressInterest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Add_ExpressInterest]
(
@Sender_Id as varchar(50),
@Receiver_Id as varchar(50),
@Date as datetime, 
@Msg_Id as nvarchar(500),
@Status as int
)
as
begin
Insert into tblInterest(Sender_Id, Receiver_Id, Date, Msg_Id, Status)
values(@Sender_Id, @Receiver_Id, @Date, @Msg_Id, @Status)
end
GO
/****** Object:  Table [dbo].[tblProfession_Child]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProfession_Child](
	[Profession_Id] [varchar](100) NOT NULL,
	[Profession] [varchar](100) NULL,
	[Profession_Master_Id] [varchar](100) NULL,
 CONSTRAINT [PK_tblProfession] PRIMARY KEY CLUSTERED 
(
	[Profession_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Accounting Professional (Others)', N'Accounting Professional (Others)', N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Actor', N'Actor', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Admin Professional', N'Admin Professional', N'Administration / HR')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Advertising Professional', N'Advertising Professional', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Agricultural Professional (others)', N'Agricultural Professional (others)', N'Agriculture')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Air Force', N'Air Force', N'Defence')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Air Hostess/ Flight Attendant/Flight Steward', N'Air Hostess/ Flight Attendant/Flight Steward', N'Airline / Aviation')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Animator', N'Animator', N'Artists / Animators / Web Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Architect', N'Architect', N'Architecture / design')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Army', N'Army', N'Defence')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Artist (Others)', N'Artist (Others)', N'Artists / Animators / Web Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Banking Professional', N'Banking Professional', N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Beautician', N'Beautician', N'Beauty / Fashion / Jewellery Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Biologist/Botanist', N'Biologist/Botanist', N'Science')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Catering Professional', N'Catering Professional', N'Hotel / Hospitality')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'CEO/ Chairman/ Director/ President', N'CEO/ Chairman/ Director/ President', N'Corporate Professionals')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Chartered Accountant', N'Chartered Accountant', N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Chef/Cook/Food Critic', N'Chef/Cook/Food Critic', N'Hotel / Hospitality')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Civil Engineer', N'Civil Engineer', N'Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Commercial Artist', N'Commercial Artist', N'Artists / Animators / Web Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Company Secretary', N'Company Secretary', N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Consultant/ Supervisor/ Team Leads', N'Consultant/ Supervisor/ Team Leads', N'Corporate Professionals')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Customer Support/ BPO/KPO Professional', N'Customer Support/ BPO/KPO Professional', N'BPO / KPO / Customer Support')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Defence Services (Others)', N'Defence Services (Others)', N'Defence')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Dentist', N'Dentist', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Designer (Others)', N'Designer (Others)', N'Beauty / Fashion / Jewellery Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Doctor', N'Doctor', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Electronics/ Telecom Engineer', N'Electronics/ Telecom Engineer', N'Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Entertainment Professional', N'Entertainment Professional', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Event Manager', N'Event Manager', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Farming', N'Farming', N'Agriculture')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Fashion Designer', N'Fashion Designer', N'Beauty / Fashion / Jewellery Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Finance Professional', N'Finance Professional', N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Hairstylist', N'Hairstylist', N'Beauty / Fashion / Jewellery Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Hardware &amp; Networking Professional', N'Hardware &amp; Networking Professional', N'IT &amp / Software Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Horticulturist', N'Horticulturist', N'Agriculture')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Hotel &amp; Hospitality Professional (Others)', N'Hotel &amp; Hospitality Professional (Others)', N'Hotel / Hospitality')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Human Resources Professional', N'Human Resources Professional', N'Administration / HR')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'IAS/IRS/IES/IFS', N'IAS/IRS/IES/IFS', N'Civil Services / Law Enforcement')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Indian Police Services (IPS)', N'Indian Police Services (IPS)', N'Civil Services / Law Enforcement')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Interior Designer', N'Interior Designer', N'Architecture / design')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Investment Professional', N'Investment Professional', N'Accounting / Banking / Finance')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Jewellery Designer', N'Jewellery Designer', N'Beauty / Fashion / Jewellery Designers')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Journalist', N'Journalist', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Landscape Architect', N'Landscape Architect', N'Architecture / design')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Law Enforcement Employees (others)', N'Law Enforcement Employees (others)', N'Civil Services / Law Enforcement')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Lawyer', N'Lawyer', N'Legal')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Lecturer', N'Lecturer', N'Education / Training')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Legal Assistant', N'Legal Assistant', N'Legal')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Legal Professional (others)', N'Legal Professional (others)', N'Legal')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Mariner', N'Mariner', N'Merchant Navy')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Marketing Professional', N'Marketing Professional', N'Sales &amp / Marketing')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Mechanical/ Production Engineer', N'Mechanical/ Production Engineer', N'Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Media Professional', N'Media Professional', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Medical /Healthcare Professional (Others)', N'Medical /Healthcare Professional (Others)', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Medical Transcriptionist', N'Medical Transcriptionist', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Merchant Naval Officer', N'Merchant Naval Officer', N'Merchant Navy')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Navy', N'Navy', N'Defence')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Non IT Engineer (Others)', N'Non IT Engineer (Others)', N'Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Nurse', N'Nurse', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Other Airline Professional', N'Other Airline Professional', N'Airline / Aviation')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Pharmacist', N'Pharmacist', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Physician Assistant', N'Physician Assistant', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Physicist', N'Physicist', N'Science')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Physiotherapist / Occupational Therapist', N'Physiotherapist / Occupational Therapist', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Pilot/Co-Pilot', N'Pilot/Co-Pilot', N'Airline / Aviation')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Professor', N'Professor', N'Education / Training')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Psychologist', N'Psychologist', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Public Relations Professional', N'Public Relations Professional', N'Advertising / Media / Entertainment')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Research Assistant', N'Research Assistant', N'Education / Training')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Research Scholar', N'Research Scholar', N'Education / Training')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Sales Professional', N'Sales Professional', N'Sales &amp / Marketing')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Science Professional (Others)', N'Science Professional (Others)', N'Science')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Software Consultant', N'Software Consultant', N'IT &amp / Software Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Software Developer/ Programmer', N'Software Developer/ Programmer', N'IT &amp / Software Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Software Professional (Others)', N'Software Professional (Others)', N'IT &amp / Software Engineering')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Sr. Manager / Manager', N'Sr. Manager / Manager', N'Corporate Professionals')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Student', N'Student', N'Student')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Surgeon', N'Surgeon', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Teacher', N'Teacher', N'Education / Training')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Team Member / Staff', N'Team Member / Staff', N'Corporate Professionals')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Therapist (Others)', N'Therapist (Others)', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Training Professional (Others)', N'Training Professional (Others)', N'Education / Training')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Veterinary Doctor', N'Veterinary Doctor', N'Medical / Healthcare')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'VP/ AVP/ GM/ DGM', N'VP/ AVP/ GM/ DGM', N'Corporate Professionals')
INSERT [dbo].[tblProfession_Child] ([Profession_Id], [Profession], [Profession_Master_Id]) VALUES (N'Web/UX Designers', N'Web/UX Designers', N'Artists / Animators / Web Designers')
/****** Object:  StoredProcedure [dbo].[SP_Select_Other_Details]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Other_Details](@Gender varchar(10),@Id varchar(10) )
	
AS
BEGIN
	
	
	
	SELECT     tblMember.Member_Id,
 DATEDIFF(hour, tblMember.Dob, GETDATE()) / 8766 AS Age,Dob,case when tblAlbum.Permission>0 then  tblAlbum.ProfilePhoto else 'PhotoLock.png' end as ProfilePhoto
                     
FROM         tblMember inner join tblAlbum on tblAlbum.MemberId = tblMember.Member_Id where tblMember.Member_Id=@Id

end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Album_ProfilePic]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Update_Album_ProfilePic]
(


@MemberId	varchar(10),
@ProfilePhoto	varchar(50)


)
as
begin
update  	dbo.tblAlbum set ProfilePhoto=@ProfilePhoto where MemberId=@MemberId

end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Intrest_Code]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_Intrest_Code]
	-- ================================================
-- Intrest Status Codes
-- 0-pending
-- 1-Waiting(Aproved From Admin)
-- 2-Decliend
-- 3-Ignored
-- 4-Accepted
-- ================================================
@Sender_Id varchar(20),
@Receiver_Id varchar(20),
@Status varchar(2)
AS
BEGIN
	update tblInterest Set Status=@Status where Sender_Id=@Sender_Id  and Receiver_Id =@Receiver_Id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Interest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_Update_Interest]
(
@Id as int,
@Sender_Id as varchar(10),
@Receiver_Id as varchar(10), 
@Date as date,
@Msg_Id as varchar(MAX),
@Status as int
)
as
begin
Update dbo.tblInterest set  Sender_Id=@Sender_Id, Receiver_Id=@Receiver_Id, 
                           Date=@Date, Msg_Id=@Msg_Id,Status=@Status 
where Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_MSG]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[SP_Update_MSG]
(
@ID int,

@Status as int
)
as
begin
Update dbo.tblMessage set  tblMessage.Status=@Status 
where tblMessage.ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Count]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =========================================Id ====
CREATE PROCEDURE [dbo].[SP_Select_Count](@Member_Id varchar(20))
	-- Add the parameters for the stored procedure here
  
AS
declare @sql varchar(1000)

BEGIN
select COUNT(*) as RC from tblMessage  as IntrestInbox  where IntrestInbox.RechiverID=@Member_Id and IntrestInbox.Status>=0 

select COUNT(*) as RC from tblMessage  as MSGOutbox  where MSGOutbox.SenderID=@Member_Id and MSGOutbox.Status>=0
select COUNT(*) as RC from tblMessage  as MSGDraft  where MSGDraft.RechiverID=@Member_Id and MSGDraft.Status=4

select COUNT(*) as RC from tblInterest  as IntrestRechived  where IntrestRechived.Receiver_Id=@Member_Id and IntrestRechived.Status=1

select COUNT(*) as RC from tblInterest  as IntrestAccepted where IntrestAccepted.Receiver_Id=@Member_Id and IntrestAccepted.Status=4

select COUNT(*) as RC from tblInterest  as IntrestRejected  where IntrestRejected.Receiver_Id=@Member_Id and IntrestRejected.Status=2

select COUNT(*) as RC from tblInterest as IntrestOutbox where IntrestOutbox.Sender_Id=@Member_Id

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Album]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Album](@MemberId varchar(10) )
AS
BEGIN
	
select 
*


from tblAlbum
where  MemberId= @MemberId

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Photo_Lock_Status]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Photo_Lock_Status]
	@MemberId varchar(20),
	@Permission varchar(20)
AS
BEGIN
	update tblAlbum set Permission=CAST(@Permission AS INT) where MemberId=@MemberId
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_PhotoReqest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Insert_PhotoReqest]
(

@Sender_Id as varchar(10),
@Receiver_Id as varchar(10), 
@Date as date,

@Status as int
)
as
begin
Insert into tblPhotoRequest(SenderId,ReceiverId,Date,Status)
values(@Sender_Id,@Receiver_Id,@Date,@Status)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_MSG]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SP_Insert_MSG]
(

@SenderID as varchar(10),
@RechiverID as varchar(10), 
@Date as date,
@MSGSubject as varchar(MAX),
@MSGBody as varchar(max),
@Status as int
)
as
begin
Insert into dbo.tblMessage(SenderID,RechiverID,MSGSubject,MSGBody,Date,Status)
values(@SenderID,@RechiverID,@MSGSubject,@MSGBody,@Date,@Status)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_MemberPlane]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insert_MemberPlane]
(

@id int,
@Member_ID	varchar(10),
@End_date	Date,
@Plan_Id	varchar(50),
@Start_date	Date


)
as
begin
Insert into	dbo.tblUser_Plan
values(@Member_ID,@Plan_Id,@Start_date,@End_date)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Interest]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insert_Interest]
(
@Id as int,
@Sender_Id as varchar(10),
@Receiver_Id as varchar(10), 
@Date as date,
@Msg_Id as varchar(MAX),
@Status as int
)
as
begin
Insert into dbo.tblInterest
values(@Sender_Id,@Receiver_Id,@Date,@Msg_Id,@Status)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Album]    Script Date: 02/03/2016 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Insert_Album]
(


@MemberId	varchar(10),
@ProfilePhoto	varchar(50),
@CreatedDate	varchar(50),
@Permission	varchar(50),
@FolderName	varchar(50),
@AlbumName	varchar(50)

)
as
begin
Insert into	dbo.tblAlbum
values(@MemberId,@ProfilePhoto,@CreatedDate,CAST(@Permission AS INT),@FolderName,@AlbumName)
end
GO
/****** Object:  UserDefinedFunction [dbo].[NextCustomerNumber]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[NextCustomerNumber](@gender varchar(5),@member_Name varchar(20)) 
returns char(9) 
as 
begin 
	declare @lastval char(9) 
	set @lastval = (select max(Member_Id) from tblMember) 
	if @lastval is null set @lastval =@member_Name+@gender+'0001' 
	declare @i int 
	set @i = right(@lastval,4) + 1 
	return @member_Name+@gender + right('000' + convert(varchar(10),@i),4) 
end
GO
/****** Object:  Table [dbo].[tblCast]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCast](
	[Cast_Id] [varchar](100) NOT NULL,
	[Cast_Name] [varchar](100) NULL,
	[Religion_Id] [varchar](10) NULL,
 CONSTRAINT [PK_tblCast] PRIMARY KEY CLUSTERED 
(
	[Cast_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'6000 Niyogi', N'6000 Niyogi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'96K Kokanastha', N'96K Kokanastha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Adi Dravida', N'Adi Dravida', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Agamudi', N'Agamudi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Agarwal', N'Agarwal', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Agri', N'Agri', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ahom', N'Ahom', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ambalavasi', N'Ambalavasi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Arora', N'Arora', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Arunthathiyar', N'Arunthathiyar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Arya Vysya', N'Arya Vysya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Aryasamaj', N'Aryasamaj', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Bahi', N'Bahi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Baidya', N'Baidya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Baishnab', N'Baishnab', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Baishya', N'Baishya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Balija', N'Balija', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Baniya', N'Baniya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Banjora', N'Banjora', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Barujibi', N'Barujibi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Beda', N'Beda', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Besta', N'Besta', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Bhandari', N'Bhandari', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Bhovi', N'Bhovi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Billava', N'Billava', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Born Again', N'Born Again', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Boyer', N'Boyer', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin', N'Brahmin', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Anavil', N'Brahmin - Anavil', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Audichya', N'Brahmin - Audichya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Bengali', N'Brahmin - Bengali', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Bhumihar', N'Brahmin - Bhumihar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Davadnya', N'Brahmin - Davadnya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Deshastha', N'Brahmin - Deshastha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Dhiman', N'Brahmin - Dhiman', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Gowd Saraswat', N'Brahmin - Gowd Saraswat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Kannada Madhva', N'Brahmin - Kannada Madhva', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Kashmiri Pandit', N'Brahmin - Kashmiri Pandit', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Maithili', N'Brahmin - Maithili', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Nagar', N'Brahmin - Nagar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Niyogi Nandavariki', N'Brahmin - Niyogi Nandavariki', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Punjabi', N'Brahmin - Punjabi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Sanadya', N'Brahmin - Sanadya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Saraswat', N'Brahmin - Saraswat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Saryuparin', N'Brahmin - Saryuparin', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Smartha', N'Brahmin - Smartha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Telugu', N'Brahmin - Telugu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Tyagi', N'Brahmin - Tyagi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Vaidik', N'Brahmin - Vaidik', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin - Viswa', N'Brahmin - Viswa', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Garhwali', N'Brahmin – Garhwali', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Goswami', N'Brahmin – Goswami', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Gour', N'Brahmin – Gour', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Gurukkal', N'Brahmin – Gurukkal', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Havyaka', N'Brahmin – Havyaka', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Iyer', N'Brahmin – Iyer', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Kanyakubja', N'Brahmin – Kanyakubja', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Karhade', N'Brahmin – Karhade', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Kokanastha', N'Brahmin – Kokanastha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Kumaoni', N'Brahmin – Kumaoni', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Brahmin – Maharashtrian', N'Brahmin – Maharashtrian', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Bunt', N'Bunt', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Buraghapu Kaalinga', N'Buraghapu Kaalinga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Catholic', N'Catholic', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Chambhar', N'Chambhar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Chaurasia', N'Chaurasia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Chettiar', N'Chettiar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Chhetri', N'Chhetri', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Choudhary', N'Choudhary', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'CKP', N'CKP', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Clean Shaven', N'Clean Shaven', NULL)
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'CMS', N'CMS', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Coorgi', N'Coorgi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'CSI', N'CSI', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Dawoodi Bohra', N'MSL', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Devadiga', N'Devadiga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Devanga', N'Devanga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Devendra Kula Vellalar', N'Devendra Kula Vellalar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Dhangar', N'Dhangar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Dheevara', N'Dheevara', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Dhobi', N'Dhobi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Digambar', N'Digambar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ediga', N'Ediga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ehle-Hadith', N'Ehle-Hadith', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Evangelical', N'Evangelical', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ezhava', N'Ezhava', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ezhuthachan', N'Ezhuthachan', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gandla', N'Gandla', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ganiga', N'Ganiga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Garhwali', N'Garhwali', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gavara', N'Gavara', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ghumar', N'Ghumar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Golla', N'Golla', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Goswami', N'Goswami', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Goud', N'Goud', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gounder', N'Gounder', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gowda', N'Gowda', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gujarati', N'Gujarati', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gupta', N'Gupta', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gurjar', N'Gurjar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Gursikh', N'Gursikh', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Indian Orthodox', N'Indian Orthodox', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Iyengar', N'Iyengar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Iyer', N'Iyer', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Jacobite', N'Jacobite', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Jain', N'Jain', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Jaiswal', N'Jaiswal', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Jangam', N'Jangam', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Jat', N'Jat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kaibarta', N'Kaibarta', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kalar', N'Kalar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kalinga Vysya', N'Kalinga Vysya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kamboj', N'Kamboj', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kamma', N'Kamma', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kannada Mogaveera', N'Kannada Mogaveera', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kapu', N'Kapu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kapu Naidu', N'Kapu Naidu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Karana', N'Karana', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Karuneekar', N'Karuneekar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kashyap', N'Kashyap', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kayastha', N'Kayastha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kesadhari', N'Kesadhari', NULL)
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Khandayat', N'Khandayat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Khandelwal', N'Khandelwal', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Khatri', N'Khatri', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Khoja', N'Khoja', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kintala Kaalinga', N'Kintala Kaalinga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Koli', N'Koli', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kongu Vellala Gounder', N'Kongu Vellala Gounder', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Korama', N'Korama', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kori', N'Kori', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Koshti', N'Koshti', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kshatriya', N'Kshatriya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kshatriya - Agnikula', N'Kshatriya - Agnikula', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kshatriya - Bhavasar', N'Kshatriya - Bhavasar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kudumbi', N'Kudumbi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kulalar', N'Kulalar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kumawat', N'Kumawat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kumbara', N'Kumbara', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kumbhakar', N'Kumbhakar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kumbhar', N'Kumbhar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kumhar', N'Kumhar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kummari', N'Kummari', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kunbi', N'Kunbi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kurmi', N'Kurmi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kuruba', N'Kuruba', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kurumbar', N'Kurumbar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Kushwaha', N'Kushwaha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Labana', N'Labana', NULL)
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Lambani', N'Lambani', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Leva Patil', N'Leva Patil', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Lingayat', N'Lingayat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Lohana', N'Lohana', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Lubana', N'Lubana', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Madiga', N'Madiga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Madiwala', N'Madiwala', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Madiwalashetty', N'Madiwalashetty', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Maharashtrian', N'Maharashtrian', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Maheshwari', N'Maheshwari', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mahishya', N'Mahishya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Malayalee Namboodiri', N'Malayalee Namboodiri', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Malayalee Variar', N'Malayalee Variar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mali', N'Mali', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Malla', N'Malla', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mannuru Kapu', N'Mannuru Kapu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Maratha', N'Maratha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Maratha - Gomantak', N'Maratha - Gomantak', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Marthoma', N'Marthoma', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Maruthuvar', N'Maruthuvar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Marvar', N'Marvar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Marwari', N'Marwari', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Maurya', N'Maurya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mavati', N'Mavati', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Meenavar', N'Meenavar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Memon', N'Memon', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Menon', N'Menon', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Meru Darji', N'Meru Darji', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mogaveera', N'Mogaveera', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mudaliar', N'Mudaliar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mudaliar - Arcot', N'Mudaliar - Arcot', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mudaliar - Saiva', N'Mudaliar - Saiva', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mudaliar - Senguntha', N'Mudaliar - Senguntha', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mudiraj', N'Mudiraj', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Mukulathur', N'Mukulathur', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Muthuraja', N'Muthuraja', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nadar', N'Nadar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Naicker', N'Naicker', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Naidu', N'Naidu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Naidu - Balija', N'Naidu - Balija', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nair', N'Nair', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nair - Vaniya', N'Nair - Vaniya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nair - Velethadathu', N'Nair - Velethadathu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nair - Vilakkithala', N'Nair - Vilakkithala', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Namasudra', N'Namasudra', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nambiar', N'Nambiar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Napit', N'Napit', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nayak', N'Nayak', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nayee Brahmin', N'Nayee Brahmin', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Nepali', N'Nepali', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Oswal', N'Oswal', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Other', N'Other', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Padmashali', N'Padmashali', N'HND')
GO
print 'Processed 200 total records'
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Parit', N'Parit', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Parkava Kulam', N'Parkava Kulam', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Patel - Desai', N'Patel - Desai', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Patel - Dodia', N'Patel - Dodia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Patel - Leva', N'Patel - Leva', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Patnaik', N'Patnaik', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Pentecost', N'Pentecost', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Perika', N'Perika', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Pillai', N'Pillai', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Prajapati', N'Prajapati', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Protestant', N'Protestant', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Punjabi', N'Punjabi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Rajaka', N'Rajaka', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Rajput', N'Rajput', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Rajput - Garhwali', N'Rajput - Garhwali', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Rajput - Kumaoni', N'Rajput - Kumaoni', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ramdasia', N'Ramdasia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ramgharia', N'Ramgharia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Ravidasia', N'Ravidasia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Reddy', N'Reddy', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Roman Catholic', N'Roman Catholic', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sadgop', N'Sadgop', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sahu', N'Sahu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Saini', N'Saini', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Saliya', N'Saliya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Scheduled Caste', N'Scheduled Caste', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Scheduled Tribe', N'Scheduled Tribe', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Senai Thalaivar', N'Senai Thalaivar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sepahia', N'Sepahia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Setti Balija', N'Setti Balija', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Shetty', N'Shetty', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Shia', N'Shia', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Shia Imami Ismaili', N'Shia Imami Ismaili', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Shimpi', N'Shimpi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Shwetamber', N'Shwetamber', N'JAN')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sindhi', N'Sindhi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Somvanshi', N'Somvanshi', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sonar', N'Sonar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sowrashtra', N'Sowrashtra', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sozhiya Vellalar', N'Sozhiya Vellalar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sunni', N'Sunni', N'MSL')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Surya Balija', N'Surya Balija', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Sutar', N'Sutar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Swarnakar', N'Swarnakar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Syrian', N'Syrian', N'CRT')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Tamil Yadava', N'Tamil Yadava', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Telaga', N'Telaga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Teli', N'Teli', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Telikula', N'Telikula', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Telugu', N'Telugu', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Thevar', N'Thevar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Thigala', N'Thigala', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Thiyya', N'Thiyya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Thogata', N'Thogata', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Udayar', N'Udayar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Uppara', N'Uppara', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vada Balija', N'Vada Balija', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vadagalai', N'Vadagalai', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaddera', N'Vaddera', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaish', N'Vaish', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaish - Dhaneshawat', N'Vaish - Dhaneshawat', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaishnav', N'Vaishnav', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaishnav - Bhatia', N'Vaishnav - Bhatia', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaishnav - Vania', N'Vaishnav - Vania', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vaishya', N'Vaishya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Valmiki', N'Valmiki', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vania', N'Vania', N'JAN')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vanjara', N'Vanjara', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vannar', N'Vannar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vanniyakullak Kshatriya', N'Vanniyakullak Kshatriya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vanniyar', N'Vanniyar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Varshney', N'Varshney', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Veera Saivam', N'Veera Saivam', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Veerashaiva', N'Veerashaiva', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vellalar', N'Vellalar', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vellama', N'Vellama', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vishwakarma', N'Vishwakarma', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vokaliga', N'Vokaliga', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Vysya', N'Vysya', N'HND')
INSERT [dbo].[tblCast] ([Cast_Id], [Cast_Name], [Religion_Id]) VALUES (N'Yadav', N'Yadav', N'HND')
/****** Object:  Table [dbo].[tblBride]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBride](
	[Bride_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [varchar](10) NULL,
	[Profession_Id] [varchar](100) NULL,
	[Complexion_Id] [varchar](10) NULL,
	[Body_Type_Code] [varchar](10) NULL,
	[Cast_Id] [varchar](100) NULL,
	[Comunity_Id] [varchar](10) NULL,
	[Food] [varchar](50) NULL,
	[Drink] [varchar](50) NULL,
	[Smoke] [varchar](50) NULL,
	[Anual_Incom] [varchar](max) NOT NULL,
	[Blode_Group] [varchar](10) NULL,
	[Height] [int] NULL,
	[About_Me] [varchar](500) NULL,
	[About_My_Patner] [varchar](500) NULL,
	[City_Id] [int] NULL,
	[Weight] [int] NULL,
	[Physical_Status] [varchar](100) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](100) NULL,
	[Zip_Code] [int] NULL,
	[Educational_Qualification] [varchar](50) NULL,
	[Occupation] [varchar](100) NULL,
	[Religion] [varchar](50) NULL,
	[Rasi] [varchar](50) NULL,
	[Gothram] [varchar](50) NULL,
	[Dosham] [varchar](10) NULL,
	[Star] [varchar](50) NULL,
	[Family_Status] [varchar](50) NULL,
	[Parents_Contects] [varchar](10) NULL,
 CONSTRAINT [PK_tblBride] PRIMARY KEY CLUSTERED 
(
	[Bride_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblBride] ON
INSERT [dbo].[tblBride] ([Bride_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (1, N'ALKAF0005', N'Actor', N'Wheatish', N'Athletic', N'Kshatriya', N'HND', N'Non-veg', N'NO', N'NO', N'787666666', N'A+', 149, N'hkjh hiuo hiokl hio hio hio hio hio hio hiokl huiokl uiohjio iuokl io hioklhioklh ioklj', N'yuik yui 7i gyu gyui giu gyu gyui guog yuiogyukiiugttyuut hiu gui giul ghiu gyuk giu iu iul yiuo hui hiuklo', 272, 44, N'Normal', N'India', N'Permanent', 678765, N'MSTR', N'gyiuykhkjh', N'HND', N'3', N'bhaaradwaj', N'No', N'23', N'Upper Middle Class', N'7876543245')
INSERT [dbo].[tblBride] ([Bride_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (2, N'MOHAF0005', N'Accounting Professional (Others)', N'Dark', N'Athletic', N'96K Kokanastha', N'CRT', N'Eggetarian', N'NO', N'NO', N'1,00,000-1,50,000', N'A+', 142, N'AAAAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAA', N'AAAAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAA  AAAAAAAAAAAAAAAAAAA', 667, 32, N'Physically challenged from birth', N'india', N'Manipur', 322342, N'Select', N'dsf', N'CRT', N'10', N'SDCS', N'No', N'10', N'Upper Middle Class', N'1888888888')
INSERT [dbo].[tblBride] ([Bride_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (3, N'MOLIF0005', N'Admin Professional', N'Dark', N'Athletic', N'96K Kokanastha', N'CRT', N'Eggetarian', N'NO', N'NO', N'1,50,000-2,00,000', N'Dont Know', 137, N'fhskfkshfsf  sfsg fshfsjfs  sdfhsgf jshfs  sfsdjfgsjhsdghsfds  dfsdhfsjsdf', N'fhskfkshfsf  sfsg fshfsjfs  sdfhsgf jshfs  sfsdjfgsjhsdghsfds  dfsdhfsjsdf', 271, 33, N'Physically challenged due to accident', N'dszcxz', N'Chhattisgarh', 213133, N'DCTR', N'kjsk', N'CRT', N'10', N'dsadad', N'No', N'1', N'Upper Middle Class', N'9646453534')
SET IDENTITY_INSERT [dbo].[tblBride] OFF
/****** Object:  StoredProcedure [dbo].[New_Member]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[New_Member]



  @member_id varchar(10) output ,
@gender varchar(10),

@Profile_Submitted_By varchar(50),
@Mobile numeric(11),
@Email varchar(50),
@Password varchar(50),
@Dob datetime,
@member_name varchar(100),
@IsVerified  char(1)




as
set @member_id=dbo.NextCustomerNumber(upper(left(@gender,1)),upper(left(@member_name,4)))

insert into tblMember values(
							@member_id,
							@member_name,
							@gender,
							
						
							@Mobile,
							@Email,
							@Password,
							@Dob,

	@Profile_Submitted_By,
@IsVerified
							
							
)
GO
/****** Object:  Table [dbo].[tblGroom]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGroom](
	[Groom_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [varchar](10) NULL,
	[Profession_Id] [varchar](100) NULL,
	[Complexion_Id] [varchar](10) NULL,
	[Body_Type_Code] [varchar](10) NULL,
	[Cast_Id] [varchar](100) NULL,
	[Comunity_Id] [varchar](10) NULL,
	[Food] [varchar](50) NULL,
	[Drink] [varchar](50) NULL,
	[Smoke] [varchar](50) NULL,
	[Anual_Incom] [varchar](max) NULL,
	[Blode_Group] [varchar](10) NULL,
	[Height] [int] NULL,
	[About_Me] [varchar](500) NULL,
	[About_My_Patner] [varchar](500) NULL,
	[City_Id] [int] NULL,
	[Weight] [int] NULL,
	[Physical_Status] [varchar](100) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](100) NULL,
	[Zip_Code] [int] NULL,
	[Educational_Qualification] [varchar](50) NULL,
	[Occupation] [varchar](100) NULL,
	[Religion] [varchar](50) NULL,
	[Rasi] [varchar](50) NULL,
	[Gothram] [varchar](50) NULL,
	[Dosham] [varchar](10) NULL,
	[Star] [varchar](50) NULL,
	[Family_Status] [varchar](50) NULL,
	[Parents_Contects] [varchar](10) NULL,
 CONSTRAINT [PK_tblGroom] PRIMARY KEY CLUSTERED 
(
	[Groom_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblGroom] ON
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (16, N'NILEM0003', N'Physician Assistant', N'Dark', N'Athletic', N'Agarwal', N'HND', N'Eggetarian', N'NO', N'NO', N'2,00,000-2,50,000', N'B+', 147, N'fvdfgdsgsfdgsfgdsgfdsgdsgdsgsdgfdsfgdsfgdsfgdsfgdsfgdsfgdsfg', N'fgdfgdfgdgfdgfgdfhgklflkjghfjghldsfhgldkjfhgljdfhlgkjdshflkjgdslghdlsghdlfhdsfgdfgdfgfgf', 674, 33, N'Mentally challenged from birth', N'India', N'Permanent', 567888, N'BCHLR', N'Hoooo', N'HND', N'Select', N'', N'No', N'Select', N'Middle Class', N'9786865674')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (18, N'KHGKM0002', N'CEO/ Chairman/ Director/ President', N'Dark', N'Athletic', N'Baishya', N'CRT', N'Eggetarian', N'NO', N'NO', N'90888', N'A-', 147, N'hmkjlhvllllllllllllllllllllllllllllllllllllllllllllllllllllllkj', N'vhjjjvjhvjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 872, 35, N'Normal', N'india', N'Permanent', 899999, N'DPMA', N'', N'CRT', N'Select', N'', N'Yes', N'Select', N'Middle Class', N'8900000000')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (19, N'LOLUM0003', N'Admin Professional', N'Dark', N'Average', N'96K Kokanastha', N'HND', N'Eggetarian', N'NO', N'NO', N'9807777', N'A+', 142, N'zcxvzcxcvxcvxcvxcvxcvcxvcxvxcvxcvxcvxcvxcvxcvxcvcxv', N'xcvxcvxcvxcvxcvxcvxcvxcvxcvcxvcxvxcvcxvxcvcxvxcvcxvxcv', 734, 35, N'Physically challenged from birth', N'India', N'Permanent', 678666, N'BCHLR', N'', N'HND', N'Select', N'', N'Yes', N'Select', N'Middle Class', N'8977770000')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (20, N'SHALM0004', N'Accounting Professional (Others)', N'Dark', N'Athletic', N'96K Kokanastha', N'CRT', N'Eggetarian', N'NO', N'NO', N'33333', N'Dont Know', 180, N'AAAAAAAAAAAAAAAAAAAAAA BBBBBBBBBBBBBBBBBBBBBB CCCCCCCCCCCCCCCCCCCCCC', N'AAAAAAAAAAAAAAAAAAAAAA BBBBBBBBBBBBBBBBBBBBBB CCCCCCCCCCCCCCCCCCCCCC', 700, 31, N'Physically challenged from birth', N'india', N'Permanent', 121212, N'ASSDGR', N'SDAD', N'CRT', N'10', N'SDCS', N'Yes', N'10', N'Middle Class', N'1212121212')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (21, N'RAVIM0005', N'Artist (Others)', N'Fair', N'Athletic', N'Brahmin - Bhumihar', N'HND', N'Non-veg', N'NO', N'NO', N'123456', N'O+', 172, N'.............................................................................................................................................', N'...................................................................................................................................', 869, 69, N'Normal', N'india', N'Permanent', 123456, N'DCTR', N'', N'HND', N'2', N'', N'Yes', N'17', N'Middle Class', N'9341171997')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (22, N'ACTIM0005', N'Accounting Professional (Others)', N'Very Fair', N'Average', N'6000 Niyogi', N'BDT', N'Non-veg', N'OCA', N'OCA', N'3435555', N'Dont Know', 142, N'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', N'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 577, 33, N'Physically challenged from birth', N'india', N'Permanent', 777777, N'ASSDGR', N'', N'BDT', N'1', N'', N'Yes', N'1', N'Middle Class', N'9879789999')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (23, N'RAMEM0005', N'Lecturer', N'Fair', N'Athletic', N'Other', N'HND', N'Veg', N'NO', N'NO', N'10000', N'B+', 172, N'iam cool person............................................................................', N'simple .....................................................................................................', 762, 63, N'Normal', N'india', N'Permanent', 333504, N'MSTR', N'lecturer', N'HND', N'7', N'', N'Yes', N'10', N'Middle Class', N'9887901023')
INSERT [dbo].[tblGroom] ([Groom_Id], [Member_Id], [Profession_Id], [Complexion_Id], [Body_Type_Code], [Cast_Id], [Comunity_Id], [Food], [Drink], [Smoke], [Anual_Incom], [Blode_Group], [Height], [About_Me], [About_My_Patner], [City_Id], [Weight], [Physical_Status], [Country], [State], [Zip_Code], [Educational_Qualification], [Occupation], [Religion], [Rasi], [Gothram], [Dosham], [Star], [Family_Status], [Parents_Contects]) VALUES (24, N'ABHIM0005', N'Actor', N'Dark', N'Athletic', N'Adi Dravida', N'CRT', N'Eggetarian', N'NO', N'NO', N'1,50,000-2,00,000', N'Dont Know', 139, N'AAAAAAAAAAAAAAAAAAA  BBBBBBBBBBBBBBBBBBB  CCCCCCCCCCCCCCCCCCC', N'AAAAAAAAAAAAAAAAAAA  BBBBBBBBBBBBBBBBBBB  CCCCCCCCCCCCCCCCCCC', 268, 33, N'Physically challenged due to accident', N'india', N'Chhattisgarh', 121212, N'DPMA', N'', N'CRT', N'11', N'fdsfsf', N'No', N'11', N'Middle Class', N'8922222222')
SET IDENTITY_INSERT [dbo].[tblGroom] OFF
/****** Object:  Table [dbo].[tblPreferd_Profile]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPreferd_Profile](
	[Member_Id] [varchar](10) NULL,
	[Cast_Id] [varchar](100) NULL,
	[Profession_Id] [varchar](100) NULL,
	[Education_Id] [varchar](100) NULL,
	[Age_Upper_Limit] [int] NULL,
	[Age_Lower_Limit] [int] NULL,
	[Height_Upper_Limit] [int] NULL,
	[Height_Lower_Limit] [int] NULL,
	[Complexion_Id] [varchar](10) NULL,
	[Body_Type_Code] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Location_Information]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Update_Location_Information]
(
@Bride_Id int,
@Groom_Id int,

@Country varchar(50),
@City_Id int,
@Residential_Status varchar(100),
@Zip_Code int,

@Gender varchar(10) 
)

as
begin
if @Gender='Male' 

Update dbo.tblBride set 

Country = @Country,
City_Id = @City_Id,
Residential_Status = Residential_Status,
Zip_Code = @Zip_Code



where Bride_Id = @Bride_Id
else

Update dbo.tblGroom set 

Country = @Country,
City_Id = @City_Id,
Residential_Status = Residential_Status,
Zip_Code = @Zip_Code

where Groom_Id = @Groom_Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Habbit]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Update_Habbit]
(
@Bride_Id int,
@Groom_Id int,

@Food	varchar(50),
@Drink	varchar(50),
@Smoke	varchar(50),

@Gender varchar(10) 
)

as
begin
if @Gender='Male' 

Update dbo.tblBride set 

Food = @Food,
Drink = @Drink,	
Smoke = @Smoke	

where Bride_Id = @Bride_Id
else

Update dbo.tblGroom set 

Food = @Food,
Drink = @Drink,	
Smoke = @Smoke	

where Groom_Id = @Groom_Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Education_And_Profession]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Update_Education_And_Profession]
(
@Bride_Id int,
@Groom_Id int,

@Educational_Qualification varchar(50),
@Anual_Incom numeric(18, 0),
@Profession_Id varchar(100),
@Occupation	varchar(100),

@Gender varchar(10) 
)

as
begin
if @Gender='Male' 

Update dbo.tblBride set 

Educational_Qualification = @Educational_Qualification,
Anual_Incom = @Anual_Incom,
Profession_Id = @Profession_Id,
Occupation	= @Occupation



where Bride_Id = @Bride_Id
else

Update dbo.tblGroom set 

Educational_Qualification = @Educational_Qualification,
Anual_Incom = @Anual_Incom,
Profession_Id = @Profession_Id,
Occupation	= @Occupation

where Groom_Id = @Groom_Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Religious_Information]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Religious_Information](@Gender varchar(10),@Id varchar(10) )
AS
BEGIN
	
if @Gender='Male' 	
	
                   SELECT     tblRashi.Rashi_Name, tblCast.Cast_Name, tblStar.Star_Name, tblComunity.Comunity_Name, tblGroom.Groom_Id AS Id, tblGroom.Dosham, tblGroom.Gothram
FROM         tblCast INNER JOIN
                      tblGroom ON tblCast.Cast_Id = tblGroom.Cast_Id INNER JOIN
                      tblRashi ON tblGroom.Rasi = tblRashi.Rashi_Id INNER JOIN
                      tblStar ON tblGroom.Star = tblStar.Star_Id  INNER JOIN
                      tblComunity ON tblGroom.Comunity_Id = tblComunity.Comunity_Id where  Member_Id= @Id
 
else


	

SELECT    tblBride.Bride_Id as Id , tblBride.Gothram , tblBride.Dosham ,tblStar.Star_Name, tblRashi.Rashi_Name, tblComunity.Comunity_Name, tblCast.Cast_Name
FROM         tblBride INNER JOIN
                      tblCast ON tblBride.Cast_Id = tblCast.Cast_Id INNER JOIN
                      tblComunity ON tblBride.Comunity_Id = tblComunity.Comunity_Id INNER JOIN
                      tblRashi ON tblBride.Rasi = tblRashi.Rashi_Id INNER JOIN
                      tblStar ON tblBride.Star = tblStar.Star_Id where   tblBride.Member_Id= @Id










END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Physical_Info_And_Other]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Physical_Info_And_Other](@Gender varchar(10),@Id varchar(10))
AS
BEGIN
	
if @Gender='Male' 	
	


SELECT  Groom_Id as id,  tblBodyComplexion.Complexion, tblBodyType.Body_Type, tblBodyType.Body_Type_Code, tblBodyComplexion.Complexion_Id,Family_Status,Blode_Group
FROM         tblBodyType INNER JOIN
                      tblGroom ON tblBodyType.Body_Type_Code = tblGroom.Body_Type_Code INNER JOIN
                      tblBodyComplexion ON tblGroom.Complexion_Id = tblBodyComplexion.Complexion_Id
where  Member_Id= @Id
else


	
SELECT   Bride_Id as id,  tblBodyComplexion.Complexion, tblBodyType.Body_Type, tblBodyType.Body_Type_Code, tblBodyComplexion.Complexion_Id,Family_Status,Blode_Group
FROM         tblBodyType INNER JOIN
                      tblBride ON tblBodyType.Body_Type_Code = tblBride.Body_Type_Code INNER JOIN
                      tblBodyComplexion ON tblBride.Complexion_Id = tblBodyComplexion.Complexion_Id
where  Member_Id= @Id

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Persional_Details]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Persional_Details](@Gender varchar(10),@Id varchar(10) )
AS
BEGIN
	
if @Gender='Male' 	
	
select 
Groom_Id as id,About_Me ,
Height ,
Weight ,
About_My_Patner ,
Physical_Status 
from tblGroom
where  Member_Id= @Id
else
	
select 
Bride_Id as id,About_Me,
Height ,
Weight ,
About_My_Patner ,
Physical_Status 
from tblBride
where  Member_Id= @Id

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Location_Information]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Location_Information](@Gender varchar(10),@Id varchar(10) )
AS
BEGIN
	
if @Gender='Male' 	
	
select 
Groom_Id,

Country,
tblCity.city_name, tblCity.city_id
State,
Zip_Code



from tblCity INNER JOIN
                      tblGroom ON tblCity.city_id = tblGroom.City_Id
where  Member_Id= @Id

else


	
select 

Country,
tblCity.city_name, tblCity.city_id
State,
Zip_Code

from tblCity INNER JOIN
                      tblBride ON tblCity.city_id = tblBride.City_Id
where  Member_Id= @Id

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Religious_Information]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Update_Religious_Information]
(
@Bride_Id int,
@Groom_Id int,

@Religion	varchar(50),
@Cast_Id	varchar(100),
@Rasi	varchar(50),
@Gothram	varchar(50),
@Star	varchar(50),
@Dosham	varchar(10),


@Gender varchar(10) 
)

as
begin
if @Gender='Male' 

Update dbo.tblBride set 

Religion = @Religion,
Cast_Id = @Cast_Id,
Rasi = @Rasi,
Gothram = @Gothram,
Star = @Star,
Dosham = @Dosham

where Bride_Id = @Bride_Id
else

Update dbo.tblGroom set 

Religion = @Religion,
Cast_Id = @Cast_Id,
Rasi = @Rasi,
Gothram = @Gothram,
Star = @Star,
Dosham = @Dosham

where Groom_Id = @Groom_Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Physical_Info_And_Other]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Update_Physical_Info_And_Other]
(
@Bride_Id int,
@Groom_Id int,

@Body_Type_Code	varchar(10),
@Complexion_Id	varchar(10),
@Blode_Group	varchar(10),
@Parents_Contects	varchar(10),
@Family_Status	varchar(50),

@Gender varchar(10) 
)

as
begin
if @Gender='Male' 

Update dbo.tblGroom  set 

Body_Type_Code = @Body_Type_Code,
Complexion_Id = @Complexion_Id,
Blode_Group = @Blode_Group,
Parents_Contects = @Parents_Contects,
Family_Status = @Family_Status

where  Groom_Id = @Groom_Id
else

Update dbo.tblBride set 

Body_Type_Code = @Body_Type_Code,
Complexion_Id = @Complexion_Id,
Blode_Group = @Blode_Group,
Parents_Contects = @Parents_Contects,
Family_Status = @Family_Status

where Bride_Id = @Bride_Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Persional_Details]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Update_Persional_Details]       /*tblBride*/
(
@Bride_Id int,
@Groom_Id int,
@About_Me varchar(500),
@Height int,
@Weight int,
@About_My_Patner varchar(500),
@Physical_Status varchar(100),
@Gender varchar(10) 
)

as
begin
if @Gender='Male' 

Update  tblGroom set 
About_Me = @About_Me,
Height = @Height,
Weight = @Weight,
About_My_Patner = @About_My_Patner,
Physical_Status = @Physical_Status

where  Groom_Id = @Bride_Id
else

Update tblBride set 
About_Me = @About_Me,
Height = @Height,
Weight = @Weight,
About_My_Patner = @About_My_Patner,
Physical_Status = @Physical_Status

where Bride_Id = @Groom_Id



end
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Habbit]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Habbit](@Gender varchar(10),@Id varchar(10) )
AS
BEGIN
	
if @Gender='Male' 	
	
select 
Groom_Id,

Food,
Drink,
Smoke


from tblGroom
where  Member_Id= @Id
else


	
select 

Food,
Drink,
Smoke

from tblBride
where  Member_Id= @Id

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_Education_And_Profession]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Select_Education_And_Profession](@Gender varchar(10),@Id varchar(10) )
AS
BEGIN
	
if @Gender='Male' 	
	
select 
Groom_Id,

Educational_Qualification,
Anual_Incom,
Profession_Id,
Occupation


from tblGroom
where  Member_Id= @Id
else


	
select 

Educational_Qualification,
Anual_Incom,
Profession_Id,
Occupation

from tblBride
where  Member_Id= @Id

END
GO
/****** Object:  StoredProcedure [dbo].[New_Groom]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[New_Groom]




@Member_Id varchar(10),
@Profession_Id varchar(100),
@Complexion_Id varchar(10),
@Body_Type_Code varchar(10),
@Cast_Id varchar(100),
@Comunity_Id varchar(10),
@Food varchar(50),
@Drink varchar(50),
@Smoke varchar(50),
@Anual_Incom varchar(MAX),
@Blode_Group varchar(10),
@Height int,
@About_Me varchar(500),
@About_My_Patner varchar(500),



@City_Id int,
@Weight int,
@Physical_Status varchar(100),

@Country varchar(50),
@State varchar(100),
@Zip_Code int,
@Educational_Qualification Varchar(50),
@Occupation Varchar(50),
@Religion Varchar(50),
@Rasi Varchar(50),

@Dosham varchar(10),
@Gothram varchar(50),
@Star Varchar(50),
@Family_Status varchar(50),
@Parents_Contects varchar(10)

as
insert into tblGroom values(


  
                
           
             
						
							@Member_Id,
							@Profession_Id,
							@Complexion_Id,
							@Body_Type_Code,
							@Cast_Id,
							@Comunity_Id,
							@Food,
							@Drink,
							@Smoke,
							@Anual_Incom ,
							@Blode_Group,
							@Height,
							@About_Me,
							@About_My_Patner,
							@City_Id,
							@Weight,
							@Physical_Status,
							@Country,
							@State,
							@Zip_Code,
							@Educational_Qualification,
							@Occupation,
							@Religion,
							@Rasi,
							@Gothram,
							@Dosham,
							@Star,
													
							@Family_Status,
							@Parents_Contects
							
							
							)
							update tblMember set IsVerified='Y' where Member_Id=@Member_Id
GO
/****** Object:  StoredProcedure [dbo].[New_Bride]    Script Date: 02/03/2016 23:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[New_Bride]




@Member_Id varchar(10),
@Profession_Id varchar(100),
@Complexion_Id varchar(10),
@Body_Type_Code varchar(10),
@Cast_Id varchar(100),
@Comunity_Id varchar(10),
@Food varchar(50),
@Drink varchar(50),
@Smoke varchar(50),
@Anual_Incom varchar(max),
@Blode_Group varchar(10),
@Height int,
@About_Me varchar(500),
@About_My_Patner varchar(500),



@City_Id int,
@Weight int,
@Physical_Status varchar(100),

@Country varchar(50),
@State varchar(100),
@Zip_Code int,
@Educational_Qualification Varchar(50),
@Occupation Varchar(50),
@Religion Varchar(50),
@Rasi Varchar(50),

@Dosham varchar(10),
@Gothram varchar(50),
@Star Varchar(50),
@Family_Status varchar(50),
@Parents_Contects varchar(10)

as
insert into tblBride values(

              
         
             
						
							@Member_Id,
							@Profession_Id,
							@Complexion_Id,
							@Body_Type_Code,
							@Cast_Id,
							@Comunity_Id,
							@Food,
							@Drink,
							@Smoke,
							@Anual_Incom ,
							@Blode_Group,
							@Height,
							@About_Me,
							@About_My_Patner,
							@City_Id,
							@Weight,
							@Physical_Status,
							@Country,
							@State,
							@Zip_Code,
							@Educational_Qualification,
							@Occupation,
							@Religion,
							@Rasi,
							@Gothram,
							@Dosham,
							@Star,
													
							@Family_Status,
							@Parents_Contects
							
							
							)
							
							update tblMember set IsVerified='Y' where Member_Id=@Member_Id
GO
/****** Object:  View [dbo].[V_Basic_Search_Groom]    Script Date: 02/03/2016 23:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Basic_Search_Groom]
AS
SELECT     dbo.tblMember.Member_Id, UPPER(dbo.tblMember.Member_Name) AS Member_Name, dbo.tblProfession_Child.Profession, dbo.tblReligion.Religion, 
                      dbo.tblCast.Cast_Name, dbo.tblGroom.Weight, dbo.tblGroom.Height, SUBSTRING(dbo.tblGroom.About_Me, 1, 30) + SUBSTRING(dbo.tblGroom.About_Me, 30, 
                      CHARINDEX(' ', SUBSTRING(dbo.tblGroom.About_Me, 30, 20))) + '..' AS About_Me, DATEDIFF(hour, dbo.tblMember.Dob, GETDATE()) / 8766 AS Age, 
                      dbo.tblEducation.Education, dbo.tblAlbum.ProfilePhoto, dbo.tblCity.city_name, dbo.tblCity.state, dbo.tblHeight.Ft_Cm, dbo.tblAlbum.Permission
FROM         dbo.tblMember INNER JOIN
                      dbo.tblGroom ON dbo.tblMember.Member_Id = dbo.tblGroom.Member_Id INNER JOIN
                      dbo.tblProfession_Child ON dbo.tblGroom.Profession_Id = dbo.tblProfession_Child.Profession_Id INNER JOIN
                      dbo.tblCast ON dbo.tblGroom.Cast_Id = dbo.tblCast.Cast_Id INNER JOIN
                      dbo.tblReligion ON dbo.tblCast.Religion_Id = dbo.tblReligion.Religion_Id INNER JOIN
                      dbo.tblEducation ON dbo.tblGroom.Educational_Qualification = dbo.tblEducation.Education_Id INNER JOIN
                      dbo.tblAlbum ON dbo.tblMember.Member_Id = dbo.tblAlbum.MemberId INNER JOIN
                      dbo.tblCity ON dbo.tblGroom.City_Id = dbo.tblCity.city_id INNER JOIN
                      dbo.tblHeight ON dbo.tblGroom.Height = dbo.tblHeight.Height
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[11] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblMember"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblGroom"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 125
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblProfession_Child"
            Begin Extent = 
               Top = 6
               Left = 514
               Bottom = 110
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCast"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 110
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblReligion"
            Begin Extent = 
               Top = 42
               Left = 654
               Bottom = 131
               Right = 814
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblEducation"
            Begin Extent = 
               Top = 114
               Left = 712
               Bottom = 203
               Right = 872
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblAlbum"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 198
            End
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search_Groom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "tblCity"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 245
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblHeight"
            Begin Extent = 
               Top = 204
               Left = 434
               Bottom = 293
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search_Groom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search_Groom'
GO
/****** Object:  View [dbo].[V_Basic_Search_Bride]    Script Date: 02/03/2016 23:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Basic_Search_Bride]
AS
SELECT     dbo.tblMember.Member_Id, UPPER(dbo.tblMember.Member_Name) AS Member_Name, dbo.tblProfession_Child.Profession, dbo.tblReligion.Religion, 
                      dbo.tblCast.Cast_Name, dbo.tblBride.Weight, dbo.tblBride.Height, SUBSTRING(dbo.tblBride.About_Me, 1, 30) + SUBSTRING(dbo.tblBride.About_Me, 30, 
                      CHARINDEX(' ', SUBSTRING(dbo.tblBride.About_Me, 30, 20))) + '..' AS About_Me, DATEDIFF(hour, dbo.tblMember.Dob, GETDATE()) / 8766 AS Age, 
                      dbo.tblEducation.Education, CASE WHEN tblAlbum.Permission > 0 THEN tblAlbum.ProfilePhoto ELSE 'PhotoLock.png' END AS ProfilePhoto, dbo.tblCity.city_name, 
                      dbo.tblCity.state, dbo.tblHeight.Ft_Cm, dbo.tblAlbum.Permission
FROM         dbo.tblMember INNER JOIN
                      dbo.tblBride ON dbo.tblMember.Member_Id = dbo.tblBride.Member_Id INNER JOIN
                      dbo.tblProfession_Child ON dbo.tblBride.Profession_Id = dbo.tblProfession_Child.Profession_Id INNER JOIN
                      dbo.tblCast ON dbo.tblBride.Cast_Id = dbo.tblCast.Cast_Id INNER JOIN
                      dbo.tblReligion ON dbo.tblCast.Religion_Id = dbo.tblReligion.Religion_Id INNER JOIN
                      dbo.tblEducation ON dbo.tblBride.Educational_Qualification = dbo.tblEducation.Education_Id INNER JOIN
                      dbo.tblAlbum ON dbo.tblMember.Member_Id = dbo.tblAlbum.MemberId INNER JOIN
                      dbo.tblCity ON dbo.tblBride.City_Id = dbo.tblCity.city_id INNER JOIN
                      dbo.tblHeight ON dbo.tblBride.Height = dbo.tblHeight.Height
WHERE     (1 = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[61] 4[1] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblMember"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 116
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblBride"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 257
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "tblProfession_Child"
            Begin Extent = 
               Top = 6
               Left = 515
               Bottom = 109
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCast"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 115
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblReligion"
            Begin Extent = 
               Top = 114
               Left = 514
               Bottom = 203
               Right = 674
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblEducation"
            Begin Extent = 
               Top = 155
               Left = 729
               Bottom = 244
               Right = 889
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblAlbum"
            Begin Extent = 
               Top = 148
               Left = 66
               Bottom = 336
               Right = 226
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search_Bride'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCity"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 245
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblHeight"
            Begin Extent = 
               Top = 204
               Left = 434
               Bottom = 293
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search_Bride'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search_Bride'
GO
/****** Object:  View [dbo].[V_Basic_Search]    Script Date: 02/03/2016 23:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Basic_Search]
AS
SELECT     dbo.tblMember.Member_Id, UPPER(dbo.tblMember.Member_Name) AS Member_Name, dbo.tblProfession_Child.Profession, dbo.tblReligion.Religion, 
                      dbo.tblCast.Cast_Name, dbo.tblGroom.Weight, dbo.tblGroom.Height, SUBSTRING(dbo.tblGroom.About_Me, 1, 30) + SUBSTRING(dbo.tblGroom.About_Me, 30, 
                      CHARINDEX(' ', SUBSTRING(dbo.tblGroom.About_Me, 30, 20))) + '..' AS About_Me, DATEDIFF(hour, dbo.tblMember.Dob, GETDATE()) / 8766 AS Age, 
                      dbo.tblEducation.Education, dbo.tblAlbum.ProfilePhoto, dbo.tblCity.city_name, dbo.tblCity.state, dbo.tblHeight.Ft_Cm
FROM         dbo.tblMember INNER JOIN
                      dbo.tblGroom ON dbo.tblMember.Member_Id = dbo.tblGroom.Member_Id INNER JOIN
                      dbo.tblProfession_Child ON dbo.tblGroom.Profession_Id = dbo.tblProfession_Child.Profession_Id INNER JOIN
                      dbo.tblCast ON dbo.tblGroom.Cast_Id = dbo.tblCast.Cast_Id INNER JOIN
                      dbo.tblReligion ON dbo.tblCast.Religion_Id = dbo.tblReligion.Religion_Id INNER JOIN
                      dbo.tblEducation ON dbo.tblGroom.Educational_Qualification = dbo.tblEducation.Education_Id INNER JOIN
                      dbo.tblAlbum ON dbo.tblMember.Member_Id = dbo.tblAlbum.MemberId INNER JOIN
                      dbo.tblCity ON dbo.tblGroom.City_Id = dbo.tblCity.city_id INNER JOIN
                      dbo.tblHeight ON dbo.tblGroom.Height = dbo.tblHeight.Height
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblMember"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblGroom"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 125
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblProfession_Child"
            Begin Extent = 
               Top = 6
               Left = 514
               Bottom = 110
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCast"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 110
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblReligion"
            Begin Extent = 
               Top = 51
               Left = 770
               Bottom = 140
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblEducation"
            Begin Extent = 
               Top = 133
               Left = 738
               Bottom = 222
               Right = 898
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblAlbum"
            Begin Extent = 
               Top = 133
               Left = 38
               Bottom = 252
               Right = 198
            End
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCity"
            Begin Extent = 
               Top = 155
               Left = 209
               Bottom = 274
               Right = 369
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblHeight"
            Begin Extent = 
               Top = 151
               Left = 479
               Bottom = 240
               Right = 639
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Basic_Search'
GO
/****** Object:  View [dbo].[V_IntrestInbox]    Script Date: 02/03/2016 23:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_IntrestInbox]
AS
SELECT DISTINCT 
                      dbo.V_Basic_Search_Groom.Member_Name, dbo.V_Basic_Search_Groom.Member_Id, dbo.tblInterest.Date, dbo.V_Basic_Search_Groom.Age, 
                      dbo.V_Basic_Search_Groom.Height, dbo.V_Basic_Search_Groom.Cast_Name, dbo.V_Basic_Search_Groom.city_name, dbo.V_Basic_Search_Groom.state, 
                      dbo.V_Basic_Search_Groom.ProfilePhoto, dbo.tblInterest.Status, dbo.tblInterest.Receiver_Id
FROM         dbo.V_Basic_Search_Groom INNER JOIN
                      dbo.tblInterest ON dbo.V_Basic_Search_Groom.Member_Id = dbo.tblInterest.Receiver_Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[2] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "V_Basic_Search_Groom"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 302
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInterest"
            Begin Extent = 
               Top = 23
               Left = 350
               Bottom = 275
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_IntrestInbox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_IntrestInbox'
GO
/****** Object:  ForeignKey [FK_tblProfession_tblEducation]    Script Date: 02/03/2016 23:36:42 ******/
ALTER TABLE [dbo].[tblProfession_Child]  WITH CHECK ADD  CONSTRAINT [FK_tblProfession_tblEducation] FOREIGN KEY([Profession_Master_Id])
REFERENCES [dbo].[tblProfession_Master] ([Profession_Master_Id])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[tblProfession_Child] CHECK CONSTRAINT [FK_tblProfession_tblEducation]
GO
/****** Object:  ForeignKey [FK_tblCast_tblCast]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblCast]  WITH CHECK ADD  CONSTRAINT [FK_tblCast_tblCast] FOREIGN KEY([Religion_Id])
REFERENCES [dbo].[tblReligion] ([Religion_Id])
GO
ALTER TABLE [dbo].[tblCast] CHECK CONSTRAINT [FK_tblCast_tblCast]
GO
/****** Object:  ForeignKey [FK_tblBride_tblBodyComplexion]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblBride]  WITH CHECK ADD  CONSTRAINT [FK_tblBride_tblBodyComplexion] FOREIGN KEY([Complexion_Id])
REFERENCES [dbo].[tblBodyComplexion] ([Complexion_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblBride] CHECK CONSTRAINT [FK_tblBride_tblBodyComplexion]
GO
/****** Object:  ForeignKey [FK_tblBride_tblBodyType]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblBride]  WITH CHECK ADD  CONSTRAINT [FK_tblBride_tblBodyType] FOREIGN KEY([Body_Type_Code])
REFERENCES [dbo].[tblBodyType] ([Body_Type_Code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblBride] CHECK CONSTRAINT [FK_tblBride_tblBodyType]
GO
/****** Object:  ForeignKey [FK_tblBride_tblCast]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblBride]  WITH CHECK ADD  CONSTRAINT [FK_tblBride_tblCast] FOREIGN KEY([Cast_Id])
REFERENCES [dbo].[tblCast] ([Cast_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblBride] CHECK CONSTRAINT [FK_tblBride_tblCast]
GO
/****** Object:  ForeignKey [FK_tblBride_tblCity]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblBride]  WITH CHECK ADD  CONSTRAINT [FK_tblBride_tblCity] FOREIGN KEY([City_Id])
REFERENCES [dbo].[tblCity] ([city_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblBride] CHECK CONSTRAINT [FK_tblBride_tblCity]
GO
/****** Object:  ForeignKey [FK_tblBride_tblComunity]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblBride]  WITH CHECK ADD  CONSTRAINT [FK_tblBride_tblComunity] FOREIGN KEY([Comunity_Id])
REFERENCES [dbo].[tblComunity] ([Comunity_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblBride] CHECK CONSTRAINT [FK_tblBride_tblComunity]
GO
/****** Object:  ForeignKey [FK_tblBride_tblProfession_Child]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblBride]  WITH CHECK ADD  CONSTRAINT [FK_tblBride_tblProfession_Child] FOREIGN KEY([Profession_Id])
REFERENCES [dbo].[tblProfession_Child] ([Profession_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblBride] CHECK CONSTRAINT [FK_tblBride_tblProfession_Child]
GO
/****** Object:  ForeignKey [FK_tblGroom_tblBodyComplexion1]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblGroom]  WITH CHECK ADD  CONSTRAINT [FK_tblGroom_tblBodyComplexion1] FOREIGN KEY([Complexion_Id])
REFERENCES [dbo].[tblBodyComplexion] ([Complexion_Id])
GO
ALTER TABLE [dbo].[tblGroom] CHECK CONSTRAINT [FK_tblGroom_tblBodyComplexion1]
GO
/****** Object:  ForeignKey [FK_tblGroom_tblBodyType]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblGroom]  WITH CHECK ADD  CONSTRAINT [FK_tblGroom_tblBodyType] FOREIGN KEY([Body_Type_Code])
REFERENCES [dbo].[tblBodyType] ([Body_Type_Code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblGroom] CHECK CONSTRAINT [FK_tblGroom_tblBodyType]
GO
/****** Object:  ForeignKey [FK_tblGroom_tblCast]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblGroom]  WITH CHECK ADD  CONSTRAINT [FK_tblGroom_tblCast] FOREIGN KEY([Cast_Id])
REFERENCES [dbo].[tblCast] ([Cast_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblGroom] CHECK CONSTRAINT [FK_tblGroom_tblCast]
GO
/****** Object:  ForeignKey [FK_tblGroom_tblCity]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblGroom]  WITH CHECK ADD  CONSTRAINT [FK_tblGroom_tblCity] FOREIGN KEY([City_Id])
REFERENCES [dbo].[tblCity] ([city_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblGroom] CHECK CONSTRAINT [FK_tblGroom_tblCity]
GO
/****** Object:  ForeignKey [FK_tblGroom_tblComunity]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblGroom]  WITH CHECK ADD  CONSTRAINT [FK_tblGroom_tblComunity] FOREIGN KEY([Comunity_Id])
REFERENCES [dbo].[tblComunity] ([Comunity_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblGroom] CHECK CONSTRAINT [FK_tblGroom_tblComunity]
GO
/****** Object:  ForeignKey [FK_tblGroom_tblProfession_Child]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblGroom]  WITH CHECK ADD  CONSTRAINT [FK_tblGroom_tblProfession_Child] FOREIGN KEY([Profession_Id])
REFERENCES [dbo].[tblProfession_Child] ([Profession_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblGroom] CHECK CONSTRAINT [FK_tblGroom_tblProfession_Child]
GO
/****** Object:  ForeignKey [FK_tblPreferd_Profile_tblBodyComplexion]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblPreferd_Profile]  WITH CHECK ADD  CONSTRAINT [FK_tblPreferd_Profile_tblBodyComplexion] FOREIGN KEY([Complexion_Id])
REFERENCES [dbo].[tblBodyComplexion] ([Complexion_Id])
GO
ALTER TABLE [dbo].[tblPreferd_Profile] CHECK CONSTRAINT [FK_tblPreferd_Profile_tblBodyComplexion]
GO
/****** Object:  ForeignKey [FK_tblPreferd_Profile_tblBodyType]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblPreferd_Profile]  WITH CHECK ADD  CONSTRAINT [FK_tblPreferd_Profile_tblBodyType] FOREIGN KEY([Body_Type_Code])
REFERENCES [dbo].[tblBodyType] ([Body_Type_Code])
GO
ALTER TABLE [dbo].[tblPreferd_Profile] CHECK CONSTRAINT [FK_tblPreferd_Profile_tblBodyType]
GO
/****** Object:  ForeignKey [FK_tblPreferd_Profile_tblCast]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblPreferd_Profile]  WITH CHECK ADD  CONSTRAINT [FK_tblPreferd_Profile_tblCast] FOREIGN KEY([Cast_Id])
REFERENCES [dbo].[tblCast] ([Cast_Id])
GO
ALTER TABLE [dbo].[tblPreferd_Profile] CHECK CONSTRAINT [FK_tblPreferd_Profile_tblCast]
GO
/****** Object:  ForeignKey [FK_tblPreferd_Profile_tblEducation]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblPreferd_Profile]  WITH CHECK ADD  CONSTRAINT [FK_tblPreferd_Profile_tblEducation] FOREIGN KEY([Education_Id])
REFERENCES [dbo].[tblEducation] ([Education_Id])
GO
ALTER TABLE [dbo].[tblPreferd_Profile] CHECK CONSTRAINT [FK_tblPreferd_Profile_tblEducation]
GO
/****** Object:  ForeignKey [FK_tblPreferd_Profile_tblProfession]    Script Date: 02/03/2016 23:36:44 ******/
ALTER TABLE [dbo].[tblPreferd_Profile]  WITH CHECK ADD  CONSTRAINT [FK_tblPreferd_Profile_tblProfession] FOREIGN KEY([Profession_Id])
REFERENCES [dbo].[tblProfession_Child] ([Profession_Id])
GO
ALTER TABLE [dbo].[tblPreferd_Profile] CHECK CONSTRAINT [FK_tblPreferd_Profile_tblProfession]
GO
