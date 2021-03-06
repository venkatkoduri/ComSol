CREATE DATABASE FreeWheels;

USE [FreeWheels]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 1/19/2022 12:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[yearOfRelease] [varchar](50) NULL,
	[genre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 1/19/2022 12:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[movieRating] [decimal](3, 2) NULL,
	[movieId] [int] NULL,
	[userID] [int] NULL,
	[createdBy] [varchar](50) NULL,
	[createdDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
	[updateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/19/2022 12:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[createdBy] [varchar](50) NULL,
	[createdDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (1, N'Test1', N'2017', N'Drama')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (2, N'Test2', N'2018', N'Fiction')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (3, N'Test3', N'2019', N'Folktale')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (4, N'Test4', N'2020', N'Poetry')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (5, N'Test5', N'2021', N'Drama')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (6, N'Test6', N'2017', N'Drama')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (7, N'Test7', N'2018', N'Fiction')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (8, N'Test8', N'2019', N'Folktale')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (9, N'Test9', N'2020', N'Poetry')
INSERT [dbo].[Movies] ([MovieId], [Title], [yearOfRelease], [genre]) VALUES (10, N'Test10', N'2021', N'Drama')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (1, CAST(3.15 AS Decimal(3, 2)), 1, 1, N'Test', CAST(N'2022-01-18T22:48:18.347' AS DateTime), N'Test', CAST(N'2022-01-18T22:48:18.353' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (2, CAST(4.15 AS Decimal(3, 2)), 2, 1, N'Test', CAST(N'2022-01-18T22:50:50.773' AS DateTime), N'Test', CAST(N'2022-01-18T22:50:50.777' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (3, CAST(3.75 AS Decimal(3, 2)), 3, 1, N'Test', CAST(N'2022-01-18T22:52:23.423' AS DateTime), N'Test', CAST(N'2022-01-18T22:52:23.423' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (4, CAST(3.45 AS Decimal(3, 2)), 4, 1, N'Test', CAST(N'2022-01-18T22:52:45.137' AS DateTime), N'Test', CAST(N'2022-01-18T22:52:45.137' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (5, CAST(5.00 AS Decimal(3, 2)), 5, 1, N'Test', CAST(N'2022-01-18T22:53:05.450' AS DateTime), N'Test', CAST(N'2022-01-18T22:53:05.450' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (6, CAST(5.00 AS Decimal(3, 2)), 6, 1, N'Test', CAST(N'2022-01-18T22:53:59.037' AS DateTime), N'Test', CAST(N'2022-01-18T22:53:59.037' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (7, CAST(4.30 AS Decimal(3, 2)), 7, 1, N'Test', CAST(N'2022-01-18T22:54:24.647' AS DateTime), N'Test', CAST(N'2022-01-18T22:54:24.647' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (8, CAST(3.75 AS Decimal(3, 2)), 8, 1, N'Test', CAST(N'2022-01-18T22:54:55.230' AS DateTime), N'Test', CAST(N'2022-01-18T22:54:55.230' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (9, CAST(4.25 AS Decimal(3, 2)), 9, 1, N'Test', CAST(N'2022-01-18T22:55:36.947' AS DateTime), N'Test', CAST(N'2022-01-18T22:55:36.947' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (10, CAST(3.00 AS Decimal(3, 2)), 1, 5, N'Test', CAST(N'2022-01-18T23:30:27.650' AS DateTime), N'Test', CAST(N'2022-01-18T23:30:27.653' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (11, CAST(3.50 AS Decimal(3, 2)), 2, 5, N'Test', CAST(N'2022-01-18T23:30:44.103' AS DateTime), N'Test', CAST(N'2022-01-18T23:30:44.103' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (12, CAST(5.00 AS Decimal(3, 2)), 3, 5, N'Test', CAST(N'2022-01-18T23:31:20.143' AS DateTime), N'Test', CAST(N'2022-01-18T23:31:20.143' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (13, CAST(3.25 AS Decimal(3, 2)), 4, 5, N'Test', CAST(N'2022-01-18T23:31:39.247' AS DateTime), N'Test', CAST(N'2022-01-18T23:31:39.247' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (14, CAST(3.75 AS Decimal(3, 2)), 5, 5, N'Test', CAST(N'2022-01-18T23:32:02.937' AS DateTime), N'Test', CAST(N'2022-01-18T23:32:02.937' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (15, CAST(3.00 AS Decimal(3, 2)), 6, 5, N'Test', CAST(N'2022-01-18T23:32:19.560' AS DateTime), N'Test', CAST(N'2022-01-18T23:32:19.560' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (16, CAST(4.25 AS Decimal(3, 2)), 7, 5, N'Test', CAST(N'2022-01-18T23:32:38.257' AS DateTime), N'Test', CAST(N'2022-01-18T23:32:38.257' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (17, CAST(3.75 AS Decimal(3, 2)), 8, 5, N'Test', CAST(N'2022-01-18T23:32:49.923' AS DateTime), N'Test', CAST(N'2022-01-18T23:32:49.923' AS DateTime))
INSERT [dbo].[Rating] ([Id], [movieRating], [movieId], [userID], [createdBy], [createdDate], [updatedBy], [updateDate]) VALUES (18, CAST(3.85 AS Decimal(3, 2)), 9, 5, N'Test', CAST(N'2022-01-18T23:33:03.597' AS DateTime), N'Test', CAST(N'2022-01-18T23:33:03.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [firstName], [lastName], [createdBy], [createdDate], [updatedBy], [updatedDate]) VALUES (1, N'John', N'Hartwig', N'John Hartwig', CAST(N'2022-01-18T19:12:40.010' AS DateTime), N'John Hartwig', CAST(N'2022-01-18T19:12:40.010' AS DateTime))
INSERT [dbo].[User] ([userID], [firstName], [lastName], [createdBy], [createdDate], [updatedBy], [updatedDate]) VALUES (2, N'David', N'Ngo', N'David Ngo', CAST(N'2022-01-18T19:12:40.020' AS DateTime), N'David Ngo', CAST(N'2022-01-18T19:12:40.020' AS DateTime))
INSERT [dbo].[User] ([userID], [firstName], [lastName], [createdBy], [createdDate], [updatedBy], [updatedDate]) VALUES (3, N'Brian', N'Shave', N'Brian', CAST(N'2022-01-18T19:12:40.020' AS DateTime), N'Brian', CAST(N'2022-01-18T19:12:40.020' AS DateTime))
INSERT [dbo].[User] ([userID], [firstName], [lastName], [createdBy], [createdDate], [updatedBy], [updatedDate]) VALUES (4, N'Guru', N'Kathiresan', N'Guru', CAST(N'2022-01-18T19:12:40.020' AS DateTime), N'Guru', CAST(N'2022-01-18T19:12:40.020' AS DateTime))
INSERT [dbo].[User] ([userID], [firstName], [lastName], [createdBy], [createdDate], [updatedBy], [updatedDate]) VALUES (5, N'Ping', N'Hu', N'Ping', CAST(N'2022-01-18T19:12:40.020' AS DateTime), N'Ping', CAST(N'2022-01-18T19:12:40.020' AS DateTime))
INSERT [dbo].[User] ([userID], [firstName], [lastName], [createdBy], [createdDate], [updatedBy], [updatedDate]) VALUES (6, N'Tie', N'Cao', N'Tie', CAST(N'2022-01-18T19:12:40.020' AS DateTime), N'Tie', CAST(N'2022-01-18T19:12:40.020' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
