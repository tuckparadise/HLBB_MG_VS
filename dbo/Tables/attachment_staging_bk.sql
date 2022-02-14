CREATE TABLE [dbo].[attachment_staging_bk](
	[arn] [nvarchar](100) NOT NULL,
	[workflow] [nvarchar](100) NOT NULL,
	[filename] [nvarchar](max) NULL,
	[filecontent] [nvarchar](max) NULL,
	[filetype] [nvarchar](max) NULL,
	[attachmentuploaddate] [datetime] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SHA2_256] [binary](32) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]