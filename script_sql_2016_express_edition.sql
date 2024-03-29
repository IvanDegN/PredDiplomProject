USE [PredDiplom_Otdel_Kadrov]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[TitleCategory] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[IdDepartment] [int] IDENTITY(1,1) NOT NULL,
	[TitleDepartment] [nvarchar](50) NOT NULL,
	[IdDepartmentType] [int] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[IdDepartment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentType]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentType](
	[IdDepartmentType] [int] IDENTITY(1,1) NOT NULL,
	[TitleDepartmentType] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DepartmentType] PRIMARY KEY CLUSTERED 
(
	[IdDepartmentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[IdEmployees] [int] IDENTITY(1,1) NOT NULL,
	[ServiceNumber] [int] NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[NumberPhone] [nvarchar](50) NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdTitle] [int] NOT NULL,
	[IdUsers] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[IdEmployees] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeStatuses]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeStatuses](
	[IdEmployeeStatuses] [int] IDENTITY(1,1) NOT NULL,
	[IdEmployee] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
	[IdPosition] [int] NOT NULL,
	[ChangeDate] [date] NOT NULL,
 CONSTRAINT [PK_EmployeeStatuses] PRIMARY KEY CLUSTERED 
(
	[IdEmployeeStatuses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeStatusType]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeStatusType](
	[IdEmployeeStatusType] [int] IDENTITY(1,1) NOT NULL,
	[TitleEmployeeStatusType] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_EmployeeStatusType] PRIMARY KEY CLUSTERED 
(
	[IdEmployeeStatusType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeVerification]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeVerification](
	[IdEmployeeVerification] [int] IDENTITY(1,1) NOT NULL,
	[IdEmployees] [int] NOT NULL,
	[StartVerification] [date] NOT NULL,
	[IdHRmanager] [int] NOT NULL,
	[Fingerprinting] [nvarchar](300) NOT NULL,
	[PsychophysiologicalExamination] [nvarchar](300) NOT NULL,
	[IdMedicalCommission] [int] NOT NULL,
	[IdEmployeeVerificationResult] [int] NOT NULL,
	[Note] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_EmployeeVerification] PRIMARY KEY CLUSTERED 
(
	[IdEmployeeVerification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeVerificationResult]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeVerificationResult](
	[IdEmployeeVerificationResult] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeVerificationResult] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeVerificationResult] PRIMARY KEY CLUSTERED 
(
	[IdEmployeeVerificationResult] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRmanager]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRmanager](
	[IdHRmanager] [int] IDENTITY(1,1) NOT NULL,
	[ServiceNumber] [int] NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[NumberPhone] [nvarchar](50) NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdTitle] [int] NOT NULL,
 CONSTRAINT [PK_HRmanager] PRIMARY KEY CLUSTERED 
(
	[IdHRmanager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalCommission]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalCommission](
	[IdMedicalCommission] [int] IDENTITY(1,1) NOT NULL,
	[MedicalCommissionTitle] [nvarchar](50) NOT NULL,
	[IdMedicalCommissionType] [int] NOT NULL,
 CONSTRAINT [PK_MedicalCommission] PRIMARY KEY CLUSTERED 
(
	[IdMedicalCommission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalCommissionType]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalCommissionType](
	[IdMedicalCommissionType] [int] IDENTITY(1,1) NOT NULL,
	[MedicalCommissionType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MedicalCommissionType] PRIMARY KEY CLUSTERED 
(
	[IdMedicalCommissionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[IdPositions] [int] IDENTITY(1,1) NOT NULL,
	[ActualName] [nvarchar](50) NOT NULL,
	[NameByState] [nvarchar](50) NOT NULL,
	[TotalBid] [decimal](18, 0) NOT NULL,
	[IdTypePositions] [int] NOT NULL,
	[IdDepartment] [int] NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[IdPositions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[IdRate] [int] IDENTITY(1,1) NOT NULL,
	[TitleRate] [decimal](18, 0) NOT NULL,
	[IdPositions] [int] NOT NULL,
	[IdEmployees] [int] NOT NULL,
	[IdRateType] [int] NOT NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[IdRate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RateType]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateType](
	[IdRateType] [int] IDENTITY(1,1) NOT NULL,
	[RateTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RateType] PRIMARY KEY CLUSTERED 
(
	[IdRateType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
	[TitleStatus] [nvarchar](150) NOT NULL,
	[IdEmployeeStatusType] [int] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[IdTitle] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[AcademicTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[IdTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePositions]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePositions](
	[IdTypePositions] [int] IDENTITY(1,1) NOT NULL,
	[TypePositions] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypePositions] PRIMARY KEY CLUSTERED 
(
	[IdTypePositions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.05.2022 0:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUsers] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IdUsers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IdCategory], [TitleCategory]) VALUES (1, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([IdEmployees], [ServiceNumber], [SurName], [Name], [MiddleName], [DateOfBirth], [NumberPhone], [IdCategory], [IdTitle], [IdUsers]) VALUES (5, 1, N'Иванов', N'Иван', N'Иванович', CAST(N'2002-01-20' AS Date), N'79312777654', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Title] ON 

INSERT [dbo].[Title] ([IdTitle], [Title], [AcademicTitle]) VALUES (1, N'Старший сотрудник', N'Ассистент')
SET IDENTITY_INSERT [dbo].[Title] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([IdUsers], [Login], [Password]) VALUES (1, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_DepartmentType] FOREIGN KEY([IdDepartmentType])
REFERENCES [dbo].[DepartmentType] ([IdDepartmentType])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_DepartmentType]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Category]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Title] FOREIGN KEY([IdTitle])
REFERENCES [dbo].[Title] ([IdTitle])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Title]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users] FOREIGN KEY([IdUsers])
REFERENCES [dbo].[Users] ([IdUsers])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users]
GO
ALTER TABLE [dbo].[EmployeeStatuses]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeStatuses_Employees] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employees] ([IdEmployees])
GO
ALTER TABLE [dbo].[EmployeeStatuses] CHECK CONSTRAINT [FK_EmployeeStatuses_Employees]
GO
ALTER TABLE [dbo].[EmployeeStatuses]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeStatuses_Positions] FOREIGN KEY([IdPosition])
REFERENCES [dbo].[Positions] ([IdPositions])
GO
ALTER TABLE [dbo].[EmployeeStatuses] CHECK CONSTRAINT [FK_EmployeeStatuses_Positions]
GO
ALTER TABLE [dbo].[EmployeeStatuses]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeStatuses_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[EmployeeStatuses] CHECK CONSTRAINT [FK_EmployeeStatuses_Status]
GO
ALTER TABLE [dbo].[EmployeeVerification]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeVerification_EmployeeVerificationResult] FOREIGN KEY([IdEmployeeVerificationResult])
REFERENCES [dbo].[EmployeeVerificationResult] ([IdEmployeeVerificationResult])
GO
ALTER TABLE [dbo].[EmployeeVerification] CHECK CONSTRAINT [FK_EmployeeVerification_EmployeeVerificationResult]
GO
ALTER TABLE [dbo].[EmployeeVerification]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeVerification_MedicalCommission] FOREIGN KEY([IdMedicalCommission])
REFERENCES [dbo].[MedicalCommission] ([IdMedicalCommission])
GO
ALTER TABLE [dbo].[EmployeeVerification] CHECK CONSTRAINT [FK_EmployeeVerification_MedicalCommission]
GO
ALTER TABLE [dbo].[HRmanager]  WITH CHECK ADD  CONSTRAINT [FK_HRmanager_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[HRmanager] CHECK CONSTRAINT [FK_HRmanager_Category]
GO
ALTER TABLE [dbo].[HRmanager]  WITH CHECK ADD  CONSTRAINT [FK_HRmanager_Title] FOREIGN KEY([IdTitle])
REFERENCES [dbo].[Title] ([IdTitle])
GO
ALTER TABLE [dbo].[HRmanager] CHECK CONSTRAINT [FK_HRmanager_Title]
GO
ALTER TABLE [dbo].[MedicalCommission]  WITH CHECK ADD  CONSTRAINT [FK_MedicalCommission_MedicalCommissionType] FOREIGN KEY([IdMedicalCommissionType])
REFERENCES [dbo].[MedicalCommissionType] ([IdMedicalCommissionType])
GO
ALTER TABLE [dbo].[MedicalCommission] CHECK CONSTRAINT [FK_MedicalCommission_MedicalCommissionType]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Department] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Department] ([IdDepartment])
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Department]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_TypePositions] FOREIGN KEY([IdTypePositions])
REFERENCES [dbo].[TypePositions] ([IdTypePositions])
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_TypePositions]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Employees] FOREIGN KEY([IdEmployees])
REFERENCES [dbo].[Employees] ([IdEmployees])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Employees]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Positions] FOREIGN KEY([IdPositions])
REFERENCES [dbo].[Positions] ([IdPositions])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Positions]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_RateType] FOREIGN KEY([IdRateType])
REFERENCES [dbo].[RateType] ([IdRateType])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_RateType]
GO
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_EmployeeStatusType] FOREIGN KEY([IdEmployeeStatusType])
REFERENCES [dbo].[EmployeeStatusType] ([IdEmployeeStatusType])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Status_EmployeeStatusType]
GO
