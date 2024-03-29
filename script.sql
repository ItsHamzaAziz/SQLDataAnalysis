USE [master]
GO
/****** Object:  Database [SQLDA]    Script Date: 04/02/2024 8:25:06 pm ******/
CREATE DATABASE [SQLDA]
GO
ALTER DATABASE [SQLDA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SQLDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SQLDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SQLDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SQLDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SQLDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SQLDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [SQLDA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SQLDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SQLDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SQLDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SQLDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SQLDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SQLDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SQLDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SQLDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SQLDA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SQLDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SQLDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SQLDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SQLDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SQLDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SQLDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SQLDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SQLDA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SQLDA] SET  MULTI_USER 
GO
ALTER DATABASE [SQLDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SQLDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SQLDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SQLDA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SQLDA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SQLDA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SQLDA] SET QUERY_STORE = ON
GO
ALTER DATABASE [SQLDA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SQLDA]
GO
/****** Object:  Table [dbo].[Aircraft]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircraft](
	[aircraft_id] [int] IDENTITY(1,1) NOT NULL,
	[aircraft_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[aircraft_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[airport_id] [int] IDENTITY(1,1) NOT NULL,
	[airport_name] [varchar](300) NULL,
	[city] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[airport_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baggage]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baggage](
	[baggage_id] [int] IDENTITY(1,1) NOT NULL,
	[baggage_detail] [varchar](500) NULL,
	[passenger] [int] NULL,
	[flight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[baggage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [varchar](100) NULL,
	[country] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Crew]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Crew](
	[crew_id] [int] IDENTITY(1,1) NOT NULL,
	[crew_name] [varchar](100) NULL,
	[crew_role] [int] NULL,
	[crew_salary] [int] NULL,
	[crew_email] [varchar](150) NULL,
	[crew_address] [varchar](250) NULL,
	[crew_gender] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[crew_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrewOnFlight]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrewOnFlight](
	[table_id] [int] IDENTITY(1,1) NOT NULL,
	[crew] [int] NULL,
	[flight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrewRole]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrewRole](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[complete_feedback] [varchar](1000) NULL,
	[passenger] [int] NULL,
	[flight] [int] NULL,
	[rating] [int] NULL,
	[response] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[flight_id] [int] IDENTITY(1,1) NOT NULL,
	[aircraft] [int] NULL,
	[flight_departure_datetime] [datetime] NULL,
	[flight_departure_airport] [int] NULL,
	[flight_arrival_datetime] [datetime] NULL,
	[flight_arrival_airport] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[flight_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[passenger_id] [int] IDENTITY(1,1) NOT NULL,
	[passenger_name] [varchar](200) NULL,
	[passenger_email] [varchar](250) NULL,
	[passenger_gender] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[passenger_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[reservation] [int] NULL,
	[amount] [int] NULL,
	[payment_method] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[passenger] [int] NULL,
	[flight] [int] NULL,
	[class] [int] NULL,
	[seat] [int] NULL,
	[reservation_datetime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Response]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Response](
	[response_id] [int] IDENTITY(1,1) NOT NULL,
	[response_detail] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[response_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[seat_id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [varchar](10) NULL,
	[class] [int] NULL,
	[aircraft] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[seat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriggersAudit]    Script Date: 04/02/2024 8:25:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriggersAudit](
	[audit_id] [int] IDENTITY(1,1) NOT NULL,
	[audit_message] [varchar](100) NULL,
	[trigger_type] [varchar](20) NULL,
	[trigger_on_table] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[audit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aircraft] ON 

INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (1, N'Boeing 747')
INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (2, N'Airbus A320')
INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (3, N'Embraer E190')
INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (4, N'Bombardier CRJ900')
INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (5, N'Boeing 787')
INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (6, N'Airbus A380')
INSERT [dbo].[Aircraft] ([aircraft_id], [aircraft_name]) VALUES (7, N'Cessna 172')
SET IDENTITY_INSERT [dbo].[Aircraft] OFF
GO
SET IDENTITY_INSERT [dbo].[Airport] ON 

INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (1, N'NY Airport', 1)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (2, N'London Airport', 2)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (3, N'Toronto Airport', 3)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (4, N'Sydney Airport', 4)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (5, N'Berlin Airport', 5)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (6, N'Paris Airport', 6)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (7, N'Tokyo Airport', 7)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (8, N'Benazir Airport', 8)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (9, N'Mumbai Airport', 9)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (10, N'Beijing Airport', 10)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (11, N'LA Airport', 11)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (12, N'Manchester Airport', 12)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (13, N'Vancouver Airport', 13)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (14, N'Melbourne Airport', 14)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (15, N'Hamburg Airport', 15)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (16, N'Nice Airport', 16)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (17, N'Osaka Airport', 17)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (18, N'Iqbal Airport', 18)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (19, N'Delhi Airport', 19)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (20, N'Shanghai Airport', 20)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (21, N'Chicago Airport', 21)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (22, N'Birmingham Airport', 22)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (23, N'Calgary Airport', 23)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (24, N'Brisbane Airport', 24)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (25, N'Munich Airport', 25)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (26, N'Lyon Airport', 26)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (27, N'Kyoto Airport', 27)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (28, N'Jinnah Airport', 28)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (29, N'Kolkata Airport', 29)
INSERT [dbo].[Airport] ([airport_id], [airport_name], [city]) VALUES (30, N'Guangzhou Airport', 30)
SET IDENTITY_INSERT [dbo].[Airport] OFF
GO
SET IDENTITY_INSERT [dbo].[Baggage] ON 

INSERT [dbo].[Baggage] ([baggage_id], [baggage_detail], [passenger], [flight]) VALUES (1, N'A black breifcase', 1, 1)
INSERT [dbo].[Baggage] ([baggage_id], [baggage_detail], [passenger], [flight]) VALUES (2, N'DELL A10 laptop', 6, 1)
INSERT [dbo].[Baggage] ([baggage_id], [baggage_detail], [passenger], [flight]) VALUES (3, N'Golf clubs', 20, 2)
INSERT [dbo].[Baggage] ([baggage_id], [baggage_detail], [passenger], [flight]) VALUES (4, N'Cricket equipments bag', 47, 4)
INSERT [dbo].[Baggage] ([baggage_id], [baggage_detail], [passenger], [flight]) VALUES (5, N'Guitar', 58, 5)
SET IDENTITY_INSERT [dbo].[Baggage] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (1, N'New York', 1)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (2, N'London', 2)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (3, N'Toronto', 3)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (4, N'Sydney', 4)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (5, N'Berlin', 5)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (6, N'Paris', 6)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (7, N'Tokyo', 7)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (8, N'Islamabad', 8)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (9, N'Mumbai', 9)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (10, N'Beijing', 10)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (11, N'Los Angeles', 1)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (12, N'Manchester', 2)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (13, N'Vancouver', 3)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (14, N'Melbourne', 4)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (15, N'Hamburg', 5)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (16, N'Nice', 6)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (17, N'Osaka', 7)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (18, N'Lahore', 8)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (19, N'Delhi', 9)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (20, N'Shanghai', 10)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (21, N'Chicago', 1)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (22, N'Birmingham', 2)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (23, N'Calgary', 3)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (24, N'Brisbane', 4)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (25, N'Munich', 5)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (26, N'Lyon', 6)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (27, N'Kyoto', 7)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (28, N'Karachi', 8)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (29, N'Kolkata', 9)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (30, N'Guangzhou', 10)
INSERT [dbo].[City] ([city_id], [city_name], [country]) VALUES (31, N'Rawalpinidi', 8)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([class_id], [class_name]) VALUES (1, N'Economy')
INSERT [dbo].[Class] ([class_id], [class_name]) VALUES (2, N'Business')
INSERT [dbo].[Class] ([class_id], [class_name]) VALUES (3, N'First')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (1, N'United States')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (2, N'United Kingdom')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (3, N'Canada')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (4, N'Australia')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (5, N'Germany')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (6, N'France')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (7, N'Japan')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (8, N'Pakistan')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (9, N'India')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (10, N'China')
INSERT [dbo].[Country] ([country_id], [country_name]) VALUES (11, N'Nepal')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Crew] ON 

INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (3, N'Ali Khan', 1, 150000, N'ali.khan@gmail.com', N'123 Main Street, Lahore', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (4, N'Sara Ahmed', 4, 55000, N'sara.ahmed@gmail.com', N'456 Park Avenue, Karachi', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (5, N'Ahmed Malik', 6, 260000, N'ahmed.malik@gmail.com', N'789 First Road, Islamabad', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (6, N'Ayesha Khan', 1, 52000, N'ayesha.khan@gmail.com', N'321 Second Avenue, Lahore', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (7, N'Hassan Ali', 7, 148000, N'hassan.ali@gmail.com', N'654 Third Street, Karachi', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (8, N'Fatima Aziz', 8, 127000, N'fatima.aziz@gmail.com', N'987 Fourth Avenue, Kala Shah Kaku', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (9, N'Usman Ahmed', 1, 354000, N'usman.ahmed@gmail.com', N'123 Fifth Road, Islamabad', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (10, N'Sana Khan', 7, 159000, N'sana.khan@gmail.com', N'456 Sixth Street, Karachi', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (11, N'Bilal Mahmood', 1, 171000, N'bilal.mahmood@gmail.com', N'789 Seventh Avenue, Kala Shah Kaku', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (12, N'Zara Khan', 8, 153000, N'zara.khan@gmail.com', N'321 Eighth Street, Islamabad', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (13, N'Naveed Ali', 4, 56000, N'naveed.ali@gmail.com', N'654 Ninth Road, Kala Shah Kaku', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (14, N'Hina Malik', 3, 58000, N'hina.malik@gmail.com', N'987 Tenth Street, Karachi', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (15, N'Imran Khan', 1, 49000, N'imran.khan@gmail.com', N'123 Eleventh Avenue, Lahore', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (16, N'Rabia Ahmed', 3, 53000, N'rabia.ahmed@gmail.com', N'456 Twelfth Road, Peshawar', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (17, N'Kamran Ali', 8, 85000, N'kamran.ali@gmail.com', N'789 Thirteenth Street, Karachi', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (18, N'Sadia Aziz', 1, 59000, N'sadia.aziz@gmail.com', N'987 Fourteenth Avenue, Lahore', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (19, N'Adnan Ahmed', 4, 152000, N'adnan.ahmed@yahoo.com', N'321 Fifteenth Road, Peshawar', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (20, N'Sara Khan', 6, 54000, N'sara.khan@yahoo.com', N'654 Sixteenth Street, Quetta', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (21, N'Faisal Mahmood', 7, 50000, N'faisal.mahmood@yahoo.com', N'789 Seventeenth Avenue, Lahore', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (22, N'Zoya Khan', 5, 56000, N'zoya.khan@yahoo.com', N'123 Eighteenth Road, Peshawar', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (23, N'Aliya Ahmed', 3, 57000, N'aliya.ahmed@yahoo.com', N'456 Nineteenth Street, Quetta', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (24, N'Tariq Malik', 1, 54000, N'tariq.malik@yahoo.com', N'987 Twentieth Avenue, Lahore', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (25, N'Rahat Khan', 6, 52000, N'rahat.khan@yahoo.com', N'321 Twenty-First Road, Peshawar', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (26, N'Sadia Mahmood', 5, 359000, N'sadia.mahmood@yahoo.com', N'654 Twenty-Second Street, Quetta', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (27, N'Imran Ahmed', 7, 255000, N'imran.ahmed@yahoo.com', N'789 Twenty-Third Avenue, Lahore', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (28, N'Sana Malik', 3, 53000, N'sana.malik@yahoo.com', N'123 Twenty-Fourth Road, Islamabad', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (29, N'Zainab Khan', 8, 58000, N'zainab.khan@yahoo.com', N'456 Twenty-Fifth Street, Quetta', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (30, N'Khalid Mahmood', 7, 357000, N'khalid.mahmood@yahoo.com', N'987 Twenty-Sixth Avenue, Lahore', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (31, N'Nimra Ali', 1, 85000, N'nimra.ali@yahoo.com', N'321 Twenty-Seventh Road, Islamabad', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (32, N'Hassan Khan', 8, 54000, N'hassan.khan@yahoo.com', N'654 Twenty-Eighth Street, Quetta', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (33, N'Anaya Ahmed', 5, 96000, N'anaya.ahmed@yahoo.com', N'789 Twenty-Ninth Avenue, Sui', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (34, N'Talha Malik', 6, 53000, N'talha.malik@yahoo.com', N'123 Thirtieth Road, Islamabad', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (35, N'Sana Mahmood', 5, 99000, N'sana.mahmood@yahoo.com', N'456 Thirty-First Street, Karachi', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (36, N'Waqar Ahmed', 1, 52000, N'waqar.ahmed@yahoo.com', N'987 Thirty-Second Avenue, Sui', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (37, N'Sara Khan', 6, 95000, N'sara.khan@yahoo.com', N'321 Thirty-Third Road, Islamabad', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (38, N'Kashif Malik', 1, 57000, N'kashif.malik@yahoo.com', N'654 Thirty-Fourth Street, Karachi', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (39, N'Nazia Mahmood', 8, 64000, N'nazia.mahmood@yahoo.com', N'789 Thirty-Fifth Avenue, Sui', N'O')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (40, N'Zahid Ali', 6, 96000, N'zahid.ali@yahoo.com', N'123 Thirty-Sixth Road, Islamabad', N'M')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (41, N'Fatima Khan', 7, 52000, N'fatima.khan@yahoo.com', N'456 Thirty-Seventh Street, Karachi', N'F')
INSERT [dbo].[Crew] ([crew_id], [crew_name], [crew_role], [crew_salary], [crew_email], [crew_address], [crew_gender]) VALUES (42, N'Adil Mahmood', 6, 97000, N'adil.mahmood@yahoo.com', N'987 Thirty-Eighth Avenue, Sui', N'M')
SET IDENTITY_INSERT [dbo].[Crew] OFF
GO
SET IDENTITY_INSERT [dbo].[CrewOnFlight] ON 

INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (2, 3, 1)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (3, 14, 1)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (4, 23, 1)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (5, 16, 1)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (6, 27, 1)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (7, 6, 2)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (8, 28, 2)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (9, 23, 2)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (10, 14, 2)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (11, 41, 2)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (12, 15, 3)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (13, 14, 3)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (14, 23, 3)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (15, 41, 3)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (16, 24, 4)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (17, 31, 4)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (18, 28, 4)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (19, 23, 4)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (20, 41, 4)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (21, 31, 5)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (22, 28, 5)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (23, 23, 5)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (24, 27, 5)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (25, 36, 6)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (26, 14, 6)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (27, 16, 6)
INSERT [dbo].[CrewOnFlight] ([table_id], [crew], [flight]) VALUES (28, 27, 6)
SET IDENTITY_INSERT [dbo].[CrewOnFlight] OFF
GO
SET IDENTITY_INSERT [dbo].[CrewRole] ON 

INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (1, N'Pilot')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (2, N'Air Host')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (3, N'Air Hostess')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (4, N'Flight Engineer')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (5, N'In Flight Chef')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (6, N'Medical Personnel')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (7, N'Load Master')
INSERT [dbo].[CrewRole] ([role_id], [role_name]) VALUES (8, N'Ground Crew')
SET IDENTITY_INSERT [dbo].[CrewRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedback_id], [complete_feedback], [passenger], [flight], [rating], [response]) VALUES (1, N'Had one of the best experience with this airline.', 6, 1, 10, 3)
INSERT [dbo].[Feedback] ([feedback_id], [complete_feedback], [passenger], [flight], [rating], [response]) VALUES (2, N'Food needs improvement.', 19, 2, 7, 1)
INSERT [dbo].[Feedback] ([feedback_id], [complete_feedback], [passenger], [flight], [rating], [response]) VALUES (3, N'Lights quality was not good in economy class as compared to other airlines.', 54, 5, 6, 1)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Flight] ON 

INSERT [dbo].[Flight] ([flight_id], [aircraft], [flight_departure_datetime], [flight_departure_airport], [flight_arrival_datetime], [flight_arrival_airport]) VALUES (1, 2, CAST(N'2022-04-05T10:00:00.000' AS DateTime), 18, CAST(N'2022-04-05T11:30:00.000' AS DateTime), 19)
INSERT [dbo].[Flight] ([flight_id], [aircraft], [flight_departure_datetime], [flight_departure_airport], [flight_arrival_datetime], [flight_arrival_airport]) VALUES (2, 4, CAST(N'2022-05-05T10:00:00.000' AS DateTime), 13, CAST(N'2022-05-05T14:00:00.000' AS DateTime), 17)
INSERT [dbo].[Flight] ([flight_id], [aircraft], [flight_departure_datetime], [flight_departure_airport], [flight_arrival_datetime], [flight_arrival_airport]) VALUES (3, 5, CAST(N'2022-05-10T09:00:00.000' AS DateTime), 18, CAST(N'2022-05-10T18:20:00.000' AS DateTime), 1)
INSERT [dbo].[Flight] ([flight_id], [aircraft], [flight_departure_datetime], [flight_departure_airport], [flight_arrival_datetime], [flight_arrival_airport]) VALUES (4, 1, CAST(N'2022-06-19T11:00:00.000' AS DateTime), 5, CAST(N'2022-06-19T14:30:00.000' AS DateTime), 20)
INSERT [dbo].[Flight] ([flight_id], [aircraft], [flight_departure_datetime], [flight_departure_airport], [flight_arrival_datetime], [flight_arrival_airport]) VALUES (5, 3, CAST(N'2022-10-10T13:00:00.000' AS DateTime), 20, CAST(N'2022-10-10T18:00:00.000' AS DateTime), 30)
INSERT [dbo].[Flight] ([flight_id], [aircraft], [flight_departure_datetime], [flight_departure_airport], [flight_arrival_datetime], [flight_arrival_airport]) VALUES (6, 2, CAST(N'2022-12-30T10:30:00.000' AS DateTime), 1, CAST(N'2022-12-30T17:30:00.000' AS DateTime), 25)
SET IDENTITY_INSERT [dbo].[Flight] OFF
GO
SET IDENTITY_INSERT [dbo].[Passenger] ON 

INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (1, N'Muhammad Ahmed', N'muhammad.ahmed@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (2, N'Ali Hassan', N'ali.hassan@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (3, N'Aisha Khan', N'aisha.khan@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (4, N'Sara Malik', N'sara.malik@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (5, N'Usman Khan', N'usman.khan@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (6, N'Fatima Ahmed', N'fatima.ahmed@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (7, N'Ahmed Raza', N'ahmed.raza@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (8, N'Sana Nasir', N'sana.nasir@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (9, N'Bilal Mahmood', N'bilal.mahmood@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (10, N'Zainab Ali', N'zainab.ali@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (11, N'Hassan Akhtar', N'hassan.akhtar@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (12, N'Sadia Khan', N'sadia.khan@google.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (13, N'Imran Ali', N'imran.ali@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (14, N'Ayesha Riaz', N'ayesha.riaz@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (15, N'Kamran Iqbal', N'kamran.iqbal@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (16, N'Zara Nasir', N'zara.nasir@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (17, N'Tariq Ahmed', N'tariq.ahmed@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (18, N'Saba Malik', N'saba.malik@google.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (19, N'Nadeem Khan', N'nadeem.khan@yahoo.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (20, N'Hina Ahmed', N'hina.ahmed@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (21, N'Fahad Ali', N'fahad.ali@yahoo.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (22, N'Rabia Shah', N'rabia.shah@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (23, N'Kashif Haider', N'kashif.haider@yahoo.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (24, N'Sadia Iqbal', N'sadia.iqbal@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (25, N'Salman Ahmed', N'salman.ahmed@yahoo.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (26, N'Sara Nadeem', N'sara.nadeem@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (27, N'Hassan Siddique', N'hassan.siddique@yahoo.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (28, N'Zainab Akram', N'zainab.akram@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (29, N'Ahmed Farooq', N'ahmed.farooq@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (30, N'Sana Tariq', N'sana.tariq@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (31, N'Nida Ali', N'nida.ali@hotmail.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (32, N'Adnan Khan', N'adnan.khan@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (33, N'Saima Malik', N'saima.malik@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (34, N'Farhan Ahmed', N'farhan.ahmed@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (35, N'Zara Siddiqui', N'zara.siddiqui@hotmail.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (36, N'Arif Khan', N'arif.khan@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (37, N'Rabia Ahmad', N'rabia.ahmad@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (38, N'Asad Malik', N'asad.malik@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (39, N'Maham Iqbal', N'maham.iqbal@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (40, N'Faisal Ahmed', N'faisal.ahmed@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (41, N'Mehreen Khan', N'mehreen.khan@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (42, N'Zubair Ali', N'zubair.ali@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (43, N'Ayesha Rashid', N'ayesha.rashid@hotmail.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (44, N'Hammad Khan', N'hammad.khan@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (45, N'Sara Azam', N'sara.azam@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (46, N'Usman Siddiqui', N'usman.siddiqui@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (47, N'Maria Riaz', N'maria.riaz@outlokk.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (48, N'Ali Hamid', N'ali.hamid@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (49, N'Hina Anwar', N'hina.anwar@outlokk.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (50, N'Kamran Raza', N'kamran.raza@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (51, N'Amna Ahmed', N'amna.ahmed@outlokk.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (52, N'Shahid Khan', N'shahid.khan@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (53, N'Anam Siddiqui', N'anam.siddiqui@outlokk.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (54, N'Imran Raza', N'imran.raza@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (55, N'Sadia Iftikhar', N'sadia.iftikhar@outlokk.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (56, N'Nadeem Siddiqui', N'nadeem.siddiqui@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (57, N'Sara Farooq', N'sara.farooq@outlokk.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (58, N'Ahmed Nadeem', N'ahmed.nadeem@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (59, N'Aisha Tariq', N'aisha.tariq@outlokk.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (60, N'Kashif Hussain', N'kashif.hussain@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (61, N'Amir Malik', N'amir.malik@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (62, N'Sadaf Ahmed', N'sadaf.ahmed@outlokk.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (63, N'Noman Khan', N'noman.khan@outlokk.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (64, N'Sara Jameel', N'sara.jameel@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (65, N'Usama Ahmed', N'usama.ahmed@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (66, N'Ayesha Zafar', N'ayesha.zafar@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (67, N'Saad Raza', N'saad.raza@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (68, N'Mahnoor Ali', N'mahnoor.ali@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (69, N'Asim Iqbal', N'asim.iqbal@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (70, N'Hira Ahmed', N'hira.ahmed@google.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (71, N'Omar Khan', N'omar.khan@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (72, N'Sara Yousaf', N'sara.yousaf@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (73, N'Rizwan Ahmed', N'rizwan.ahmed@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (74, N'Saima Arif', N'saima.arif@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (75, N'Kashif Riaz', N'kashif.riaz@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (76, N'Aisha Siddiqui', N'aisha.siddiqui@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (77, N'Farhan Ali', N'farhan.ali@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (78, N'Rabia Hassan', N'rabia.hassan@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (79, N'Asad Ahmed', N'asad.ahmed@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (80, N'Maham Malik', N'maham.malik@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (81, N'Umar Raza', N'umar.raza@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (82, N'Saba Khan', N'saba.khan@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (83, N'Kamran Arif', N'kamran.arif@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (84, N'Ayesha Zahid', N'ayesha.zahid@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (85, N'Zohaib Ahmed', N'zohaib.ahmed@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (86, N'Fiza Nasir', N'fiza.nasir@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (87, N'Bilal Riaz', N'bilal.riaz@google.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (88, N'Mehak Ali', N'mehak.ali@google.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (89, N'Ahmed Aslam', N'ahmed.aslam@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (90, N'Sana Zahoor', N'sana.zahoor@hotmail.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (91, N'Abdullah Malik', N'abdullah.malik@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (92, N'Sadia Qureshi', N'sadia.qureshi@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (93, N'Kamran Khan', N'kamran.khan@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (94, N'Ayesha Haider', N'ayesha.haider@hotmail.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (95, N'Nasir Ahmed', N'nasir.ahmed@hotmail.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (96, N'Zainab Rehman', N'zainab.rehman@yahoo.com', N'O')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (97, N'Ahmed Qureshi', N'ahmed.qureshi@yahoo.com', N'M')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (98, N'Sara Iqbal', N'sara.iqbal@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (99, N'Asim Malik', N'asim.malik@yahoo.com', N'M')
GO
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (100, N'Hina Raza', N'hina.raza@yahoo.com', N'F')
INSERT [dbo].[Passenger] ([passenger_id], [passenger_name], [passenger_email], [passenger_gender]) VALUES (101, N'Saad Ahmed', N'saad.ahmed@yahoo.com', N'M')
SET IDENTITY_INSERT [dbo].[Passenger] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (1, 1, 40000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (2, 2, 40000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (3, 3, 40000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (4, 4, 40000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (5, 5, 40000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (6, 6, 40000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (7, 7, 40000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (8, 8, 70000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (9, 9, 70000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (10, 10, 70000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (11, 11, 70000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (12, 12, 70000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (13, 13, 120000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (14, 14, 120000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (15, 15, 120000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (16, 16, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (17, 17, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (18, 18, 50000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (19, 19, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (20, 20, 50000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (21, 21, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (22, 22, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (23, 23, 90000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (24, 24, 90000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (25, 25, 90000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (26, 26, 90000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (27, 27, 90000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (28, 28, 150000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (29, 29, 100000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (30, 30, 100000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (31, 31, 100000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (32, 32, 100000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (33, 33, 100000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (34, 34, 100000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (35, 35, 100000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (36, 36, 100000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (37, 37, 100000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (38, 38, 160000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (39, 39, 160000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (40, 40, 160000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (41, 41, 160000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (42, 42, 30000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (43, 43, 30000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (44, 44, 30000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (45, 45, 30000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (46, 46, 30000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (47, 47, 30000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (48, 48, 30000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (49, 49, 70000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (50, 50, 70000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (51, 51, 70000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (52, 52, 130000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (53, 53, 110000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (54, 54, 110000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (55, 55, 110000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (56, 56, 110000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (57, 57, 110000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (58, 58, 150000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (59, 59, 150000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (60, 60, 150000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (61, 61, 150000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (62, 62, 50000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (63, 63, 50000, N'Cash')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (64, 64, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (65, 65, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (66, 66, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (67, 67, 50000, N'Online')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (68, 68, 90000, N'Card')
INSERT [dbo].[Payment] ([payment_id], [reservation], [amount], [payment_method]) VALUES (69, 69, 90000, N'Card')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservation] ON 

INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (1, 1, 1, 1, 16, CAST(N'2022-04-01T10:06:30.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (2, 2, 1, 1, 17, CAST(N'2022-03-01T11:05:20.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (3, 3, 1, 1, 18, CAST(N'2022-03-15T12:04:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (4, 4, 1, 1, 19, CAST(N'2022-03-15T13:30:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (5, 5, 1, 1, 20, CAST(N'2022-03-08T05:00:40.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (6, 6, 1, 1, 21, CAST(N'2022-03-15T18:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (7, 7, 1, 1, 22, CAST(N'2022-03-08T19:30:40.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (8, 8, 1, 2, 23, CAST(N'2022-03-26T13:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (9, 9, 1, 2, 24, CAST(N'2022-03-07T08:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (10, 10, 1, 2, 25, CAST(N'2022-03-26T08:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (11, 11, 1, 2, 26, CAST(N'2022-03-07T13:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (12, 12, 1, 2, 27, CAST(N'2022-03-07T08:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (13, 13, 1, 3, 28, CAST(N'2022-03-26T13:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (14, 14, 1, 3, 29, CAST(N'2022-03-15T08:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (15, 15, 1, 3, 30, CAST(N'2022-03-26T13:00:50.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (16, 16, 2, 1, 44, CAST(N'2022-05-01T10:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (17, 17, 2, 1, 45, CAST(N'2022-04-30T05:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (18, 18, 2, 1, 46, CAST(N'2022-04-27T19:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (19, 19, 2, 1, 47, CAST(N'2022-05-02T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (20, 20, 2, 1, 48, CAST(N'2022-04-03T19:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (21, 21, 2, 1, 49, CAST(N'2022-04-16T10:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (22, 22, 2, 1, 50, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (23, 23, 2, 2, 51, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (24, 24, 2, 2, 52, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (25, 25, 2, 2, 53, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (26, 26, 2, 2, 54, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (27, 27, 2, 2, 55, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (28, 28, 2, 3, 56, CAST(N'2022-04-18T05:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (29, 29, 3, 1, 57, CAST(N'2022-05-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (30, 30, 3, 1, 58, CAST(N'2022-05-08T07:20:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (31, 31, 3, 1, 59, CAST(N'2022-05-05T10:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (32, 32, 3, 1, 60, CAST(N'2022-05-06T07:20:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (33, 33, 3, 1, 61, CAST(N'2022-05-02T06:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (34, 34, 3, 1, 61, CAST(N'2022-04-03T15:20:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (35, 35, 3, 1, 63, CAST(N'2022-05-07T06:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (36, 36, 3, 1, 64, CAST(N'2022-04-30T10:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (37, 37, 3, 1, 66, CAST(N'2022-04-28T18:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (38, 38, 3, 2, 67, CAST(N'2022-04-21T07:20:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (39, 39, 3, 2, 68, CAST(N'2022-04-18T18:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (40, 40, 3, 2, 69, CAST(N'2022-04-17T07:20:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (41, 41, 3, 2, 70, CAST(N'2022-04-19T18:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (42, 42, 4, 1, 1, CAST(N'2022-06-18T18:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (43, 43, 4, 1, 2, CAST(N'2022-06-11T11:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (44, 44, 4, 1, 3, CAST(N'2022-06-06T09:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (45, 45, 4, 1, 4, CAST(N'2022-06-11T11:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (46, 46, 4, 1, 5, CAST(N'2022-06-17T18:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (47, 47, 4, 1, 6, CAST(N'2022-05-19T09:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (48, 48, 4, 1, 7, CAST(N'2022-05-29T11:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (49, 49, 4, 2, 9, CAST(N'2022-05-30T18:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (50, 50, 4, 2, 10, CAST(N'2022-04-28T11:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (51, 51, 4, 2, 11, CAST(N'2022-04-26T09:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (52, 52, 4, 3, 14, CAST(N'2022-04-26T09:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (53, 53, 5, 1, 31, CAST(N'2022-10-09T09:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (54, 54, 5, 1, 32, CAST(N'2022-10-08T04:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (55, 55, 5, 1, 33, CAST(N'2022-10-07T09:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (56, 56, 5, 1, 34, CAST(N'2022-10-04T03:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (57, 57, 5, 1, 35, CAST(N'2022-10-06T04:30:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (58, 58, 5, 2, 38, CAST(N'2022-10-02T03:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (59, 59, 5, 2, 39, CAST(N'2022-10-01T04:30:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (60, 60, 5, 2, 40, CAST(N'2022-10-05T03:10:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (61, 61, 5, 2, 41, CAST(N'2022-10-04T03:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (62, 62, 6, 1, 17, CAST(N'2022-12-29T03:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (63, 63, 6, 1, 18, CAST(N'2022-12-28T01:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (64, 64, 6, 1, 19, CAST(N'2022-12-24T03:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (65, 65, 6, 1, 20, CAST(N'2022-12-25T01:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (66, 66, 6, 1, 21, CAST(N'2022-12-27T03:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (67, 67, 6, 1, 22, CAST(N'2022-12-26T01:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (68, 68, 6, 2, 23, CAST(N'2022-12-29T03:00:00.000' AS DateTime))
INSERT [dbo].[Reservation] ([reservation_id], [passenger], [flight], [class], [seat], [reservation_datetime]) VALUES (69, 69, 6, 2, 25, CAST(N'2022-12-21T01:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reservation] OFF
GO
SET IDENTITY_INSERT [dbo].[Response] ON 

INSERT [dbo].[Response] ([response_id], [response_detail]) VALUES (1, N'Yet to be cosidered')
INSERT [dbo].[Response] ([response_id], [response_detail]) VALUES (2, N'Under consideration')
INSERT [dbo].[Response] ([response_id], [response_detail]) VALUES (3, N'Considered')
SET IDENTITY_INSERT [dbo].[Response] OFF
GO
SET IDENTITY_INSERT [dbo].[Seat] ON 

INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (1, N'1AA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (2, N'1BA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (3, N'1CA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (4, N'2AA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (5, N'2BA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (6, N'2CA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (7, N'3AA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (8, N'3BA', 1, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (9, N'4AA', 2, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (10, N'4BA', 2, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (11, N'5AA', 2, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (12, N'5BA', 2, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (13, N'5BA', 2, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (14, N'5BA', 3, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (15, N'5BA', 3, 1)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (16, N'1AB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (17, N'1BB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (18, N'2AB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (19, N'2BB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (20, N'3AB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (21, N'3BB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (22, N'4AB', 1, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (23, N'4BB', 2, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (24, N'5AB', 2, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (25, N'5BB', 2, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (26, N'5BB', 2, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (27, N'5BB', 2, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (28, N'5BB', 3, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (29, N'5BB', 3, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (30, N'5BB', 3, 2)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (31, N'1AC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (32, N'1BC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (33, N'2AC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (34, N'2BC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (35, N'2BC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (36, N'2BC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (37, N'2BC', 1, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (38, N'2BC', 2, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (39, N'2BC', 2, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (40, N'2BC', 2, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (41, N'2BC', 2, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (42, N'2BC', 2, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (43, N'2BC', 2, 3)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (44, N'1AD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (45, N'1BD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (46, N'2AD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (47, N'2BD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (48, N'2BD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (49, N'2BD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (50, N'2BD', 1, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (51, N'2BD', 2, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (52, N'2BD', 2, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (53, N'2BD', 2, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (54, N'2BD', 2, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (55, N'2BD', 2, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (56, N'2BD', 3, 4)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (57, N'1AE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (58, N'1BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (59, N'2AE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (60, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (61, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (62, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (63, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (64, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (65, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (66, N'2BE', 1, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (67, N'2BE', 2, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (68, N'2BE', 2, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (69, N'2BE', 2, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (70, N'2BE', 2, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (71, N'2BE', 2, 5)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (72, N'1AF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (73, N'1BF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (74, N'2AF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (75, N'2BF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (76, N'2BF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (77, N'2BF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (78, N'2BF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (79, N'2BF', 1, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (80, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (81, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (82, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (83, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (84, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (85, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (86, N'2BF', 2, 6)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (87, N'1AG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (88, N'1BG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (89, N'2AG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (90, N'2BG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (91, N'2BG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (92, N'2BG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (93, N'2BG', 1, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (94, N'2BG', 2, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (95, N'2BG', 2, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (96, N'2BG', 2, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (97, N'2BG', 2, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (98, N'2BG', 2, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (99, N'2BG', 2, 7)
GO
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (100, N'2BG', 3, 7)
INSERT [dbo].[Seat] ([seat_id], [seat_name], [class], [aircraft]) VALUES (101, N'2BG', 3, 7)
SET IDENTITY_INSERT [dbo].[Seat] OFF
GO
SET IDENTITY_INSERT [dbo].[TriggersAudit] ON 

INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (1, N'Class Id 4 of name Special has been inserted in Class table.', N'Insert', N'Class')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (2, N'Class Id 4 has been inserted in Class table.', N'Insert', N'Class')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (3, N'Class Id 4 has been updated in Class table at Jun 10 2023 10:21PM.', N'Update', N'Class')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (4, N'Class Id 4 of name VIP has been updated in Class table at Jun 10 2023 10:21PM.', N'Update', N'Class')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (5, N'Class Id 4 has been deleted from Class table.', N'Delete', N'Class')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (6, N'Class Id 4 of name VIP has been deleted from Class table.', N'Delete', N'Class')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (7, N'Aircraft Id 8 has been inserted in Aircraft table.', N'Insert', N'Aircraft')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (8, N'Aircraft Id 8 has been deleted from Aircraft table.', N'Delete', N'Aircraft')
INSERT [dbo].[TriggersAudit] ([audit_id], [audit_message], [trigger_type], [trigger_on_table]) VALUES (9, N'Aircraft Id 8 of name 1 has been deleted from Aircraft table.', N'Delete', N'Aircraft')
SET IDENTITY_INSERT [dbo].[TriggersAudit] OFF
GO
ALTER TABLE [dbo].[Airport]  WITH CHECK ADD FOREIGN KEY([city])
REFERENCES [dbo].[City] ([city_id])
GO
ALTER TABLE [dbo].[Baggage]  WITH CHECK ADD FOREIGN KEY([flight])
REFERENCES [dbo].[Flight] ([flight_id])
GO
ALTER TABLE [dbo].[Baggage]  WITH CHECK ADD FOREIGN KEY([passenger])
REFERENCES [dbo].[Passenger] ([passenger_id])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([country])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Crew]  WITH CHECK ADD FOREIGN KEY([crew_role])
REFERENCES [dbo].[CrewRole] ([role_id])
GO
ALTER TABLE [dbo].[CrewOnFlight]  WITH CHECK ADD FOREIGN KEY([flight])
REFERENCES [dbo].[Flight] ([flight_id])
GO
ALTER TABLE [dbo].[CrewOnFlight]  WITH CHECK ADD FOREIGN KEY([crew])
REFERENCES [dbo].[Crew] ([crew_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([flight])
REFERENCES [dbo].[Flight] ([flight_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([passenger])
REFERENCES [dbo].[Passenger] ([passenger_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([response])
REFERENCES [dbo].[Response] ([response_id])
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD FOREIGN KEY([aircraft])
REFERENCES [dbo].[Aircraft] ([aircraft_id])
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD FOREIGN KEY([flight_arrival_airport])
REFERENCES [dbo].[Airport] ([airport_id])
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD FOREIGN KEY([flight_departure_airport])
REFERENCES [dbo].[Airport] ([airport_id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([reservation])
REFERENCES [dbo].[Reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([class])
REFERENCES [dbo].[Class] ([class_id])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([flight])
REFERENCES [dbo].[Flight] ([flight_id])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([passenger])
REFERENCES [dbo].[Passenger] ([passenger_id])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([seat])
REFERENCES [dbo].[Seat] ([seat_id])
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD FOREIGN KEY([aircraft])
REFERENCES [dbo].[Aircraft] ([aircraft_id])
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD FOREIGN KEY([class])
REFERENCES [dbo].[Class] ([class_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD CHECK  (([rating]<=(10)))
GO
USE [master]
GO
ALTER DATABASE [SQLDA] SET  READ_WRITE 
GO
