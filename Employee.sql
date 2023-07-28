USE [D:\real state proj]
GO

/****** Object:  Table [dbo].[employee]    Script Date: 7/24/2023 10:14:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employee](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[num] [int] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_sales office] FOREIGN KEY([num])
REFERENCES [dbo].[sales office] ([Num])
GO

ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_sales office]
GO


