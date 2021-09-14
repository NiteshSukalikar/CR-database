USE [sugerylink]
GO

/****** Object:  Table [dbo].[ModuleRole]    Script Date: 9/14/2021 11:13:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ModuleRole](
	[ModuleRoleID] [bigint] IDENTITY(1,1) NOT NULL primary key,
	[ModuleRoleGuid] UNIQUEIDENTIFIER default NEWID() Not Null,	

	[ModuleID] [bigint] Not Null,
	[RoleID] [bigint] Not Null,

	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,	
)
GO

ALTER TABLE [dbo].[ModuleRole]  WITH CHECK ADD  CONSTRAINT [FK_MasterRole_ModuleRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[MasterRole] ([RoleID])
GO

ALTER TABLE [dbo].[ModuleRole]  WITH CHECK ADD  CONSTRAINT [FK_MasterModule_ModuleRole] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[MasterModule] ([ModuleID])
GO
