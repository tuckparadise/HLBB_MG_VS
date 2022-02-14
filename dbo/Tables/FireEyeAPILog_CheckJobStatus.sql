CREATE TABLE [dbo].[FireEyeAPILog_CheckJobStatus](
	[InsertedDate] [datetime] NULL,
	[arn] [nvarchar](max) NULL,
	[workflow] [nvarchar](max) NULL,
	[filename] [nvarchar](max) NULL,
	[sha2_256] [nvarchar](max) NULL,
	[Logs] [nvarchar](max) NULL,
	[StatusCode] [nvarchar](max) NULL,
	[StatusDescription] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[ErrorException] [nvarchar](max) NULL,
	[IsSuccessful] [nvarchar](max) NULL,
	[ResponseStatus] [nvarchar](max) NULL,
	[Request] [nvarchar](max) NULL,
	[Headers] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]