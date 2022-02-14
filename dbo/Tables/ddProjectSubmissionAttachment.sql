CREATE TABLE [dbo].[ddProjectSubmissionAttachment](
	[AttachmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[ARN] [nvarchar](100) NULL,
	[ProjectCode] [nvarchar](100) NULL,
	[Attachment] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL,
	[AttachmentName] [nvarchar](max) NULL,
	[DraftID] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]