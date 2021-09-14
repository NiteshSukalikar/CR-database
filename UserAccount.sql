USE [sugerylink]
GO

/****** Object:  Table [dbo].[UserAccount]    Script Date: 9/14/2021 11:13:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserAccount](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserGuid] UNIQUEIDENTIFIER default NEWID() Not Null,
	[UserName] [nvarchar](200) Not NULL,
	[UserPassword] [nvarchar](200) Not NULL,
	[MacAddress] [nvarchar](200) Not NULL,
	[IsActive] [bit] NULL,
	[IsBlocked] [bit] NULL,
	[InvalidAttempt] int null,
	[PasswordExpirationDate] [datetime2](7) NULL,
	[LastLogin] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[UserGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO


ALTER TABLE [dbo].[UserAccount]  
ADD UNIQUE (UserID)  