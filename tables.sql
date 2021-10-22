USE [sugerylink]
GO
/****** Object:  Table [dbo].[tblCallNotificationUsers]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCallNotificationUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionId] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_CallNotificationUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClinicalStudy]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClinicalStudy](
	[ClinicalStudyID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClinicalStudyGuid] [uniqueidentifier] NOT NULL,
	[ClinicalStudyCode] [nvarchar](200) NULL,
	[ClinicalStudyShortDescription] [nvarchar](500) NULL,
	[ClinicalStudyDescription] [nvarchar](max) NULL,
	[ImportedFrom] [nvarchar](200) NULL,
	[ClinicalStudyOwnerID] [int] NOT NULL,
	[PublishDate] [datetime2](7) NULL,
	[IsPublish] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinicalStudyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClinicalStudyAttachment]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClinicalStudyAttachment](
	[ClinicalStudyAttachmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClinicalStudyAttachmentGuid] [uniqueidentifier] NOT NULL,
	[ClinicalStudyAttachmentName] [nvarchar](200) NOT NULL,
	[ClinicalStudyAttachmentVersion] [nvarchar](200) NOT NULL,
	[ClinicalStudyAttachmentStoredName] [nvarchar](200) NOT NULL,
	[ClinicalStudyAttachmentUploadedBy] [nvarchar](200) NOT NULL,
	[ClinicalStudyAttachmentComment] [nvarchar](200) NOT NULL,
	[ClinicalStudyID] [bigint] NOT NULL,
	[ClinicalStudyContractID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinicalStudyAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClinicalStudyContract]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClinicalStudyContract](
	[ClinicalStudyContractID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClinicalStudyContractGuid] [uniqueidentifier] NOT NULL,
	[ClinicalStudyContractCode] [nvarchar](200) NULL,
	[ClinicalStudyContractDescription] [nvarchar](max) NULL,
	[ClinicalStudyContractOwner] [nvarchar](200) NOT NULL,
	[ClinicalStudyContractWith] [nvarchar](200) NOT NULL,
	[ClinicalStudyActionBy] [nvarchar](200) NOT NULL,
	[ClinicalStudyActionType] [int] NOT NULL,
	[ClinicalStudyContractType] [int] NOT NULL,
	[ClinicalStudyID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblClinicalStudyContract] PRIMARY KEY CLUSTERED 
(
	[ClinicalStudyContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClinicalStudyDrug]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClinicalStudyDrug](
	[ClinicalStudyDrugID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClinicalStudyDrugGuid] [uniqueidentifier] NOT NULL,
	[ClinicalStudyDrugName] [nvarchar](200) NOT NULL,
	[ClinicalStudyDrugCode] [nvarchar](200) NOT NULL,
	[ClinicalStudyDrugQty] [int] NOT NULL,
	[ClinicalStudyDrugProvidedBy] [nvarchar](200) NOT NULL,
	[ClinicalStudyID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinicalStudyDrugID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClinicalStudyInvetory]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClinicalStudyInvetory](
	[ClinicalStudyInvetoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClinicalStudyInvetoryGuid] [uniqueidentifier] NOT NULL,
	[ClinicalStudyInvetoryName] [nvarchar](200) NOT NULL,
	[ClinicalStudyInvetoryCode] [nvarchar](200) NOT NULL,
	[ClinicalStudyInvetoryQty] [int] NOT NULL,
	[ClinicalStudyInvetoryProvidedBy] [nvarchar](200) NOT NULL,
	[ClinicalStudyID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinicalStudyInvetoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClinicalStudyRoles]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClinicalStudyRoles](
	[ClinicalStudyRolesID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClinicalStudyRolesGuid] [uniqueidentifier] NOT NULL,
	[ClinicalStudyRoleType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[ClinicalStudyID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsBlock] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinicalStudyRolesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountryMaster]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountryMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountryCode] [varchar](5) NULL,
 CONSTRAINT [PK_tblCountryMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatbases]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatbases](
	[DatabaseID] [bigint] IDENTITY(1,1) NOT NULL,
	[DatabaseGuid] [uniqueidentifier] NOT NULL,
	[ServerName] [nvarchar](200) NULL,
	[ServerIP] [nvarchar](200) NULL,
	[UserName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[OrganizationsID] [bigint] NOT NULL,
	[IsBlocked] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[DatabaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogUserProfiles]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogUserProfiles](
	[LogUserProfileID] [bigint] IDENTITY(1,1) NOT NULL,
	[LogUserProfileGuid] [uniqueidentifier] NOT NULL,
	[LogDescription] [nvarchar](200) NOT NULL,
	[ActivityCodeID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[APICodeID] [int] NOT NULL,
	[UserProfileID] [bigint] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogUserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogUsers]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogUsers](
	[LogUserID] [bigint] IDENTITY(1,1) NOT NULL,
	[LogUserGuid] [uniqueidentifier] NOT NULL,
	[LogDescription] [nvarchar](200) NOT NULL,
	[ActivityCodeID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[APICodeID] [int] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblLogUsers] PRIMARY KEY CLUSTERED 
(
	[LogUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LogUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterActivity]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterActivity](
	[ActivityID] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityGuid] [uniqueidentifier] NOT NULL,
	[ActivityName] [nvarchar](200) NULL,
	[ActivityCode] [nvarchar](200) NULL,
	[ActivityDescription] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblMasterActivity] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterAPI]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterAPI](
	[APIID] [bigint] IDENTITY(1,1) NOT NULL,
	[APIGuid] [uniqueidentifier] NOT NULL,
	[APICode] [nvarchar](200) NULL,
	[APIDescription] [nvarchar](200) NULL,
	[ModuleID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblMasterAPI] PRIMARY KEY CLUSTERED 
(
	[APIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterModules]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterModules](
	[ModuleID] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleGuid] [uniqueidentifier] NOT NULL,
	[ModuleName] [nvarchar](200) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblMasterModules] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterOrganizationType]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterOrganizationType](
	[OrganizationTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationTypeGuid] [uniqueidentifier] NOT NULL,
	[OrganizationTypeName] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblMasterOrganizationType] PRIMARY KEY CLUSTERED 
(
	[OrganizationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterRoles]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterRoles](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleGuid] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblMasterRoles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModuleRoles]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModuleRoles](
	[ModuleRoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleRoleGuid] [uniqueidentifier] NOT NULL,
	[ModuleID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrganizations]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrganizations](
	[OrganizationsID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationsGuid] [uniqueidentifier] NOT NULL,
	[OrganizationsName] [nvarchar](200) NULL,
	[BusinessName] [nvarchar](200) NULL,
	[SubDomainName] [nvarchar](200) NULL,
	[LogoName] [nvarchar](200) NULL,
	[FaviconName] [nvarchar](200) NULL,
	[UserID] [bigint] NOT NULL,
	[Address] [nvarchar](500) NULL,
	[EmailAddress] [nvarchar](500) NULL,
	[PrimaryContactNumber] [nvarchar](200) NULL,
	[SecondaryContactNumber] [nvarchar](200) NULL,
	[StateID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[OrganizationTypesId] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrganizationsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSmtp]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSmtp](
	[SmtpID] [bigint] IDENTITY(1,1) NOT NULL,
	[SmtpGuid] [uniqueidentifier] NOT NULL,
	[ServerName] [nvarchar](200) NULL,
	[ServerIP] [nvarchar](200) NULL,
	[UserName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[OrganizationsID] [bigint] NOT NULL,
	[IsBlocked] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[SmtpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStateMaster]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStateMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_tblStateMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserProfiles]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserProfiles](
	[UserProfileID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserProfileGuid] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[MaidenName] [nvarchar](200) NULL,
	[OtherName] [nvarchar](200) NULL,
	[UserID] [bigint] NOT NULL,
	[DOB] [nvarchar](200) NULL,
	[GenderId] [smallint] NOT NULL,
	[MaritalStatusId] [int] NULL,
	[Age] [int] NULL,
	[NativeSpokenLanguage] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](500) NULL,
	[PrimaryContactNumber] [nvarchar](200) NULL,
	[SecondaryContactNumber] [nvarchar](200) NULL,
	[CreatedByLoginID] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[StateID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_tblUserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserRoles]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserRoles](
	[UserRoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserRoleGuid] [uniqueidentifier] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserGuid] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[UserPassword] [nvarchar](200) NOT NULL,
	[MacAddress] [nvarchar](200) NOT NULL,
	[TransactionCode] [nvarchar](200) NOT NULL,
	[IsActive] [bit] NULL,
	[IsBlocked] [bit] NULL,
	[InvalidAttempt] [int] NULL,
	[PasswordExpirationDate] [datetime2](7) NULL,
	[LastLogin] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVendors]    Script Date: 10/20/2021 11:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVendors](
	[VendorID] [bigint] IDENTITY(1,1) NOT NULL,
	[VendorGuid] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[EmailAddress] [nvarchar](500) NULL,
	[PrimaryContactNumber] [nvarchar](200) NULL,
	[SecondaryContactNumber] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[StateID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblClinicalStudy] ADD  DEFAULT (newid()) FOR [ClinicalStudyGuid]
GO
ALTER TABLE [dbo].[tblClinicalStudyAttachment] ADD  DEFAULT (newid()) FOR [ClinicalStudyAttachmentGuid]
GO
ALTER TABLE [dbo].[tblClinicalStudyContract] ADD  DEFAULT (newid()) FOR [ClinicalStudyContractGuid]
GO
ALTER TABLE [dbo].[tblClinicalStudyDrug] ADD  DEFAULT (newid()) FOR [ClinicalStudyDrugGuid]
GO
ALTER TABLE [dbo].[tblClinicalStudyInvetory] ADD  DEFAULT (newid()) FOR [ClinicalStudyInvetoryGuid]
GO
ALTER TABLE [dbo].[tblClinicalStudyRoles] ADD  DEFAULT (newid()) FOR [ClinicalStudyRolesGuid]
GO
ALTER TABLE [dbo].[tblDatbases] ADD  DEFAULT (newid()) FOR [DatabaseGuid]
GO
ALTER TABLE [dbo].[tblLogUserProfiles] ADD  DEFAULT (newid()) FOR [LogUserProfileGuid]
GO
ALTER TABLE [dbo].[tblLogUsers] ADD  DEFAULT (newid()) FOR [LogUserGuid]
GO
ALTER TABLE [dbo].[tblMasterActivity] ADD  DEFAULT (newid()) FOR [ActivityGuid]
GO
ALTER TABLE [dbo].[tblMasterAPI] ADD  DEFAULT (newid()) FOR [APIGuid]
GO
ALTER TABLE [dbo].[tblMasterModules] ADD  DEFAULT (newid()) FOR [ModuleGuid]
GO
ALTER TABLE [dbo].[tblMasterOrganizationType] ADD  DEFAULT (newid()) FOR [OrganizationTypeGuid]
GO
ALTER TABLE [dbo].[tblMasterRoles] ADD  DEFAULT (newid()) FOR [RoleGuid]
GO
ALTER TABLE [dbo].[tblModuleRoles] ADD  DEFAULT (newid()) FOR [ModuleRoleGuid]
GO
ALTER TABLE [dbo].[tblOrganizations] ADD  DEFAULT (newid()) FOR [OrganizationsGuid]
GO
ALTER TABLE [dbo].[tblSmtp] ADD  DEFAULT (newid()) FOR [SmtpGuid]
GO
ALTER TABLE [dbo].[tblUserProfiles] ADD  DEFAULT (newid()) FOR [UserProfileGuid]
GO
ALTER TABLE [dbo].[tblUserRoles] ADD  DEFAULT (newid()) FOR [UserRoleGuid]
GO
ALTER TABLE [dbo].[tblUsers] ADD  DEFAULT (newid()) FOR [UserGuid]
GO
ALTER TABLE [dbo].[tblVendors] ADD  DEFAULT (newid()) FOR [VendorGuid]
GO
ALTER TABLE [dbo].[tblClinicalStudyAttachment]  WITH CHECK ADD  CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyAttachment] FOREIGN KEY([ClinicalStudyID])
REFERENCES [dbo].[tblClinicalStudy] ([ClinicalStudyID])
GO
ALTER TABLE [dbo].[tblClinicalStudyAttachment] CHECK CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyAttachment]
GO
ALTER TABLE [dbo].[tblClinicalStudyAttachment]  WITH CHECK ADD  CONSTRAINT [FK_tblClinicalStudyContract_tblClinicalStudyAttachment] FOREIGN KEY([ClinicalStudyContractID])
REFERENCES [dbo].[tblClinicalStudyContract] ([ClinicalStudyContractID])
GO
ALTER TABLE [dbo].[tblClinicalStudyAttachment] CHECK CONSTRAINT [FK_tblClinicalStudyContract_tblClinicalStudyAttachment]
GO
ALTER TABLE [dbo].[tblClinicalStudyContract]  WITH CHECK ADD  CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyContract] FOREIGN KEY([ClinicalStudyID])
REFERENCES [dbo].[tblClinicalStudy] ([ClinicalStudyID])
GO
ALTER TABLE [dbo].[tblClinicalStudyContract] CHECK CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyContract]
GO
ALTER TABLE [dbo].[tblClinicalStudyDrug]  WITH CHECK ADD  CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyDrug] FOREIGN KEY([ClinicalStudyID])
REFERENCES [dbo].[tblClinicalStudy] ([ClinicalStudyID])
GO
ALTER TABLE [dbo].[tblClinicalStudyDrug] CHECK CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyDrug]
GO
ALTER TABLE [dbo].[tblClinicalStudyInvetory]  WITH CHECK ADD  CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyInvetory] FOREIGN KEY([ClinicalStudyID])
REFERENCES [dbo].[tblClinicalStudy] ([ClinicalStudyID])
GO
ALTER TABLE [dbo].[tblClinicalStudyInvetory] CHECK CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyInvetory]
GO
ALTER TABLE [dbo].[tblClinicalStudyRoles]  WITH CHECK ADD  CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyRoles] FOREIGN KEY([ClinicalStudyID])
REFERENCES [dbo].[tblClinicalStudy] ([ClinicalStudyID])
GO
ALTER TABLE [dbo].[tblClinicalStudyRoles] CHECK CONSTRAINT [FK_tblClinicalStudy_tblClinicalStudyRoles]
GO
ALTER TABLE [dbo].[tblClinicalStudyRoles]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblClinicalStudyRoles] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblClinicalStudyRoles] CHECK CONSTRAINT [FK_tblUsers_tblClinicalStudyRoles]
GO
ALTER TABLE [dbo].[tblDatbases]  WITH CHECK ADD  CONSTRAINT [FK_tblOrganizations_tblDatbases] FOREIGN KEY([OrganizationsID])
REFERENCES [dbo].[tblOrganizations] ([OrganizationsID])
GO
ALTER TABLE [dbo].[tblDatbases] CHECK CONSTRAINT [FK_tblOrganizations_tblDatbases]
GO
ALTER TABLE [dbo].[tblLogUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_tblUserProfiles_tblLogUserProfiles] FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[tblUserProfiles] ([UserProfileID])
GO
ALTER TABLE [dbo].[tblLogUserProfiles] CHECK CONSTRAINT [FK_tblUserProfiles_tblLogUserProfiles]
GO
ALTER TABLE [dbo].[tblLogUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblLogUsers_tblUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblLogUsers] CHECK CONSTRAINT [FK_tblLogUsers_tblUsers]
GO
ALTER TABLE [dbo].[tblMasterAPI]  WITH CHECK ADD  CONSTRAINT [FK_tblMasterModules_tblMasterAPI] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[tblMasterModules] ([ModuleID])
GO
ALTER TABLE [dbo].[tblMasterAPI] CHECK CONSTRAINT [FK_tblMasterModules_tblMasterAPI]
GO
ALTER TABLE [dbo].[tblModuleRoles]  WITH CHECK ADD  CONSTRAINT [FK_tblMasterModules_tblModuleRoles] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[tblMasterModules] ([ModuleID])
GO
ALTER TABLE [dbo].[tblModuleRoles] CHECK CONSTRAINT [FK_tblMasterModules_tblModuleRoles]
GO
ALTER TABLE [dbo].[tblModuleRoles]  WITH CHECK ADD  CONSTRAINT [FK_tblMasterRoles_tblModuleRoles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblMasterRoles] ([RoleID])
GO
ALTER TABLE [dbo].[tblModuleRoles] CHECK CONSTRAINT [FK_tblMasterRoles_tblModuleRoles]
GO
ALTER TABLE [dbo].[tblOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_tblCountryMaster_tblOrganizations] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountryMaster] ([ID])
GO
ALTER TABLE [dbo].[tblOrganizations] CHECK CONSTRAINT [FK_tblCountryMaster_tblOrganizations]
GO
ALTER TABLE [dbo].[tblOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_tblStateMaster_tblOrganizations] FOREIGN KEY([StateID])
REFERENCES [dbo].[tblStateMaster] ([ID])
GO
ALTER TABLE [dbo].[tblOrganizations] CHECK CONSTRAINT [FK_tblStateMaster_tblOrganizations]
GO
ALTER TABLE [dbo].[tblOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblOrganizations] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblOrganizations] CHECK CONSTRAINT [FK_tblUsers_tblOrganizations]
GO
ALTER TABLE [dbo].[tblSmtp]  WITH CHECK ADD  CONSTRAINT [FK_tblOrganizations_tblSmtp] FOREIGN KEY([OrganizationsID])
REFERENCES [dbo].[tblOrganizations] ([OrganizationsID])
GO
ALTER TABLE [dbo].[tblSmtp] CHECK CONSTRAINT [FK_tblOrganizations_tblSmtp]
GO
ALTER TABLE [dbo].[tblStateMaster]  WITH CHECK ADD  CONSTRAINT [FK_tblStateMaster_tblCountryMaster] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountryMaster] ([ID])
GO
ALTER TABLE [dbo].[tblStateMaster] CHECK CONSTRAINT [FK_tblStateMaster_tblCountryMaster]
GO
ALTER TABLE [dbo].[tblUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_tblCountryMaster_tblUserProfiles] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountryMaster] ([ID])
GO
ALTER TABLE [dbo].[tblUserProfiles] CHECK CONSTRAINT [FK_tblCountryMaster_tblUserProfiles]
GO
ALTER TABLE [dbo].[tblUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_tblStateMaster_tblUserProfiles] FOREIGN KEY([StateID])
REFERENCES [dbo].[tblStateMaster] ([ID])
GO
ALTER TABLE [dbo].[tblUserProfiles] CHECK CONSTRAINT [FK_tblStateMaster_tblUserProfiles]
GO
ALTER TABLE [dbo].[tblUserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblUserProfiles] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblUserProfiles] CHECK CONSTRAINT [FK_tblUsers_tblUserProfiles]
GO
ALTER TABLE [dbo].[tblUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_tblMasterRoles_tblUserRoles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblMasterRoles] ([RoleID])
GO
ALTER TABLE [dbo].[tblUserRoles] CHECK CONSTRAINT [FK_tblMasterRoles_tblUserRoles]
GO
ALTER TABLE [dbo].[tblUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblUserRoles] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblUserRoles] CHECK CONSTRAINT [FK_tblUsers_tblUserRoles]
GO
