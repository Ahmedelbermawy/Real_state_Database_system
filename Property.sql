USE [D:\real state proj]
GO

/****** Object:  Table [dbo].[property]    Script Date: 7/24/2023 10:24:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[property](
	[property_id] [int] NOT NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip] [int] NULL,
	[num] [int] NULL,
 CONSTRAINT [PK_property] PRIMARY KEY CLUSTERED 
(
	[property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[property]  WITH CHECK ADD  CONSTRAINT [FK_property_sales office] FOREIGN KEY([num])
REFERENCES [dbo].[sales office] ([Num])
GO

ALTER TABLE [dbo].[property] CHECK CONSTRAINT [FK_property_sales office]
GO


