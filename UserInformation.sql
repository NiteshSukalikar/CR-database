USE [sugerylink]
GO

/****** Object:  Table [dbo].[UserInformation]    Script Date: 9/14/2021 11:13:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserInformation](
	[UserInformationID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserInformationGuid] UNIQUEIDENTIFIER default NEWID() Not Null,
	
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[MaidenName] [nvarchar](200) NULL,
	[OtherName] [nvarchar](200) NULL,

	[UserGuid] UNIQUEIDENTIFIER Not Null,

	[DOB] [nvarchar](200) NULL,
	[GenderId] [smallint] NOT NULL,
	[MaritalStatusId] [int] NULL,
	[Age] [int] NULL,
	[NativeSpokenLanguage] [nvarchar](50) NULL,

	[EmailAddress] [nvarchar](500) NULL,
	[Telephone] [nvarchar](200) NULL,


	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	
 CONSTRAINT [PK_UserInformation] PRIMARY KEY CLUSTERED 
(
	[UserGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserInformation]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_UserInformation] FOREIGN KEY([UserGuid])
REFERENCES [dbo].[UserAccount] ([UserGuid])
GO


ALTER TABLE [dbo].[UserInformation]  
ADD UNIQUE (UserInformationID)  