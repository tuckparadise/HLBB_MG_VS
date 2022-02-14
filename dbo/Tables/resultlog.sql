CREATE TABLE [dbo].[resultlog](
	[arn] [nvarchar](100) NOT NULL,
	[workflow] [nvarchar](100) NOT NULL,
	[filename_original] [nvarchar](100) NULL,
	[filename_new] [nvarchar](100) NULL,
	[filecontent] [nvarchar](max) NULL,
	[filetype] [nvarchar](max) NULL,
	[attachmentuploaddate] [datetime] NULL,
	[fe_file_url] [nvarchar](max) NULL,
	[fe_fireeye_id] [nvarchar](100) NOT NULL,
	[fe_failed_description] [nvarchar](max) NULL,
	[fe_failed_code] [nvarchar](max) NULL,
	[result] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SHA2_256] [binary](32) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [resultlogClusteredIndex]    Script Date: 2/14/2022 7:05:41 PM ******/
CREATE CLUSTERED INDEX [resultlogClusteredIndex] ON [dbo].[resultlog]
(
	[arn] ASC,
	[workflow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]