CREATE TABLE [dbo].[attachment_master_bk](
	[arn] [nvarchar](100) NOT NULL,
	[workflow] [nvarchar](100) NOT NULL,
	[checkcount] [int] NULL,
	[job_status] [nvarchar](100) NULL,
	[result] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[lock] [int] NULL
) ON [PRIMARY]