USE [D:\real state proj]
GO

/****** Object:  Table [dbo].[sales office]    Script Date: 7/24/2023 10:25:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sales office](
	[Num] [int] NOT NULL,
	[loc] [varchar](50) NULL,
	[id] [int] NULL,
 CONSTRAINT [PK_sales office] PRIMARY KEY CLUSTERED 
(
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sales office]  WITH CHECK ADD  CONSTRAINT [FK_sales office_employee] FOREIGN KEY([id])
REFERENCES [dbo].[employee] ([id])
GO

ALTER TABLE [dbo].[sales office] CHECK CONSTRAINT [FK_sales office_employee]
GO


