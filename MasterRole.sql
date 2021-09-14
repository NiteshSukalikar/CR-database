USE [sugerylink]
GO

/****** Object:  Table [dbo].[MasterRole]    Script Date: 9/14/2021 11:13:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MasterRole](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleGuid] UNIQUEIDENTIFIER default NEWID() Not Null,
	[RoleName] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	
 CONSTRAINT [PK_MasterRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO