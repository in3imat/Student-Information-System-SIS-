USE [SISDB]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[AttendanceDate] [date] NOT NULL,
	[Section_Id] [int] NOT NULL,
	[Student_Id] [int] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Credit] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[HOD] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [float] NOT NULL,
	[Section_Id] [int] NOT NULL,
	[Student_Id] [int] NOT NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor_Emails]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Emails](
	[Instructor_Id] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor_Emails] PRIMARY KEY CLUSTERED 
(
	[Instructor_Id] ASC,
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor_Phones]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Phones](
	[Instructor_Id] [int] NOT NULL,
	[Phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor_Phones] PRIMARY KEY CLUSTERED 
(
	[Instructor_Id] ASC,
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Specialization] [nvarchar](50) NULL,
	[Department_Id] [int] NOT NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MaxCapacity] [int] NULL,
	[Course_Id] [int] NOT NULL,
	[Instructor_Id] [int] NOT NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Phones]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Phones](
	[Student_id] [int] NOT NULL,
	[Phone] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Student_Phones] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC,
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Sections]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Sections](
	[Student_Id] [int] NOT NULL,
	[Section_Id] [int] NOT NULL,
 CONSTRAINT [PK_Student_Sections] PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC,
	[Section_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/25/2025 11:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Email] [varchar](50) NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Department_Id] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Sections] FOREIGN KEY([Section_Id])
REFERENCES [dbo].[Sections] ([ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Sections]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Students] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Students]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Sections] FOREIGN KEY([Section_Id])
REFERENCES [dbo].[Sections] ([ID])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Sections]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Students] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Students]
GO
ALTER TABLE [dbo].[Instructor_Emails]  WITH CHECK ADD  CONSTRAINT [FK__Instructo__Instr__6754599E] FOREIGN KEY([Instructor_Id])
REFERENCES [dbo].[Instructors] ([ID])
GO
ALTER TABLE [dbo].[Instructor_Emails] CHECK CONSTRAINT [FK__Instructo__Instr__6754599E]
GO
ALTER TABLE [dbo].[Instructor_Phones]  WITH CHECK ADD  CONSTRAINT [FK__Instructo__Instr__66603565] FOREIGN KEY([Instructor_Id])
REFERENCES [dbo].[Instructors] ([ID])
GO
ALTER TABLE [dbo].[Instructor_Phones] CHECK CONSTRAINT [FK__Instructo__Instr__66603565]
GO
ALTER TABLE [dbo].[Instructors]  WITH CHECK ADD  CONSTRAINT [FK_Instructors_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([ID])
GO
ALTER TABLE [dbo].[Instructors] CHECK CONSTRAINT [FK_Instructors_Departments]
GO
ALTER TABLE [dbo].[Sections]  WITH CHECK ADD  CONSTRAINT [FK_Sections_Courses] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[Sections] CHECK CONSTRAINT [FK_Sections_Courses]
GO
ALTER TABLE [dbo].[Sections]  WITH CHECK ADD  CONSTRAINT [FK_Sections_Instructors] FOREIGN KEY([Instructor_Id])
REFERENCES [dbo].[Instructors] ([ID])
GO
ALTER TABLE [dbo].[Sections] CHECK CONSTRAINT [FK_Sections_Instructors]
GO
ALTER TABLE [dbo].[Student_Phones]  WITH CHECK ADD FOREIGN KEY([Student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Student_Sections]  WITH CHECK ADD  CONSTRAINT [FK__Student_S__Secti__693CA210] FOREIGN KEY([Section_Id])
REFERENCES [dbo].[Sections] ([ID])
GO
ALTER TABLE [dbo].[Student_Sections] CHECK CONSTRAINT [FK__Student_S__Secti__693CA210]
GO
ALTER TABLE [dbo].[Student_Sections]  WITH CHECK ADD FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Departments]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [CK_Students] CHECK  (([DOB]<getdate()))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [CK_Students]
GO
