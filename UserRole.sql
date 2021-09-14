USE [sugerylink]
GO

/****** Object:  Table [dbo].[UserRoles]    Script Date: 9/14/2021 11:13:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserRoles](
	[UserRoleID] [bigint] IDENTITY(1,1) NOT NULL primary key,
	[UserRoleGuid] UNIQUEIDENTIFIER default NEWID() Not Null,	

	[RoleID] [bigint] Not Null,
	[UserGuid] UNIQUEIDENTIFIER Not Null,

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

ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRole_UserRoles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[MasterRole] ([RoleID])
GO

ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_UserRoles] FOREIGN KEY([UserGuid])
REFERENCES [dbo].[UserAccount] ([UserGuid])
GO
