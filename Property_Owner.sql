USE [D:\real state proj]
GO

/****** Object:  Table [dbo].[propert_owner]    Script Date: 7/24/2023 10:22:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[propert_owner](
	[property_id] [int] NOT NULL,
	[owner_id] [int] NOT NULL,
 CONSTRAINT [PK_propert_owner] PRIMARY KEY CLUSTERED 
(
	[property_id] ASC,
	[owner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[propert_owner]  WITH CHECK ADD  CONSTRAINT [FK_propert_owner_owner] FOREIGN KEY([owner_id])
REFERENCES [dbo].[owner] ([owner_id])
GO

ALTER TABLE [dbo].[propert_owner] CHECK CONSTRAINT [FK_propert_owner_owner]
GO

ALTER TABLE [dbo].[propert_owner]  WITH CHECK ADD  CONSTRAINT [FK_propert_owner_property] FOREIGN KEY([property_id])
REFERENCES [dbo].[property] ([property_id])
GO

ALTER TABLE [dbo].[propert_owner] CHECK CONSTRAINT [FK_propert_owner_property]
GO


