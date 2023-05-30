USE [ProjectMDS]
GO

/****** Object:  Table [dbo].[subjects]    Script Date: 30/05/2023 10:02:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[subjects](
	[subject] [varchar](50) NOT NULL,
	[year] [numeric](18, 0) NOT NULL,
	[semester] [numeric](18, 0) NOT NULL,
	[credits] [numeric](18, 0) NOT NULL,
	[grade] [numeric](18, 0) NULL,
 CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED 
(
	[subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

