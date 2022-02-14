CREATE TABLE [dbo].[attachment_detail_bk](
	[arn] [nvarchar](100) NOT NULL,
	[workflow] [nvarchar](100) NOT NULL,
	[filename_original] [nvarchar](100) NULL,
	[filename_new] [nvarchar](100) NULL,
	[filecontent] [nvarchar](max) NULL,
	[filetype] [nvarchar](max) NULL,
	[attachmentuploaddate] [datetime] NULL,
	[fe_file_url] [nvarchar](max) NULL,
	[fe_fireeye_id] [nvarchar](100) NULL,
	[fe_failed_description] [nvarchar](max) NULL,
	[fe_failed_code] [nvarchar](max) NULL,
	[result] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SHA2_256] [binary](32) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]