CREATE TABLE [dbo].[attachment_master](
	[arn] [nvarchar](100) NOT NULL,
	[workflow] [nvarchar](100) NOT NULL,
	[checkcount] [int] NULL,
	[job_status] [nvarchar](100) NULL,
	[result] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[lock] [int] NULL,
 CONSTRAINT [PK_solicitor_attachment_master] PRIMARY KEY CLUSTERED 
(
	[arn] ASC,
	[workflow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]