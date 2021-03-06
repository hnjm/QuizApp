USE [Quiz]
GO
/****** Object:  Table [dbo].[Quizs]    Script Date: 05/25/2020 20:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quizs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuizName] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Quizs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/25/2020 20:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](16) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[RefreshTokenEndDate] [datetime] NULL,
	[RefreshToken] [nvarchar](500) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quizs] ON 

INSERT [dbo].[Quizs] ([Id], [QuizName], [Description], [CreatedDate]) VALUES (20, N'Ruh Eşini Bul', N'Lorem Ipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan taklit yazı bloğu olarak tanımlanır. Lipsum, oluşturulacak şablon ve taslaklarda içerik yerine geçerek yazı bloğunu doldurmak için kullanılır. ', CAST(N'2020-05-25T16:18:15.743' AS DateTime))
SET IDENTITY_INSERT [dbo].[Quizs] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [UserName], [Password], [FirstName], [LastName], [RefreshTokenEndDate], [RefreshToken]) VALUES (4, N'aktass.aktass2021@gmail.com', NULL, N'123456', N'Evren', N'Aktaş', CAST(N'2020-05-25T20:19:02.483' AS DateTime), N'8/PAIB75kp6hhWgOHrlgETDBmfPk2lXgV1XjeMFKH+Y=')
SET IDENTITY_INSERT [dbo].[Users] OFF
