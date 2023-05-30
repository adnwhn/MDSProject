USE [ProjectMDS]
GO

/****** Object:  Table [dbo].[people]    Script Date: 30/05/2023 10:01:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[people](
	[sid] [numeric](18, 0) NOT NULL,
	[tid] [numeric](18, 0) NOT NULL,
	[uid] [numeric](18, 0) NOT NULL,
	[subject] [varchar](50) NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[ssn] [numeric](18, 0) NOT NULL,
	[id] [varchar](50) NOT NULL,
	[phone_no] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[admission_year] [numeric](18, 0) NOT NULL,
	[admission_grade] [numeric](18, 0) NULL,
	[university] [varchar](50) NULL,
	[degree] [varchar](50) NULL,
	[domain] [varchar](50) NULL,
	[class] [numeric](18, 0) NULL,
	[year] [numeric](18, 0) NULL,
 CONSTRAINT [PK_people] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[tid] ASC,
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[people]  WITH CHECK ADD  CONSTRAINT [FK_people_people] FOREIGN KEY([subject])
REFERENCES [dbo].[subjects] ([subject])
GO

ALTER TABLE [dbo].[people] CHECK CONSTRAINT [FK_people_people]
GO

