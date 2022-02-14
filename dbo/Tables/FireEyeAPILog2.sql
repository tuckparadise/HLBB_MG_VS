CREATE TABLE [dbo].[FireEyeAPILog2](
	[InsertedDate] [datetime] NULL,
	[arn] [nvarchar](max) NULL,
	[workflow] [nvarchar](max) NULL,
	[filename] [nvarchar](max) NULL,
	[sha2_256] [nvarchar](max) NULL,
	[Logs] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]