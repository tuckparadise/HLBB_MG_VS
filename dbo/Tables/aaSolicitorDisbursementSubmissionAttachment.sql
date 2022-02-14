CREATE TABLE [dbo].[aaSolicitorDisbursementSubmissionAttachment](
	[AttachmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[ARN] [nvarchar](100) NOT NULL,
	[SolicitorCode] [nvarchar](100) NOT NULL,
	[Attachment] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL,
	[AttachmentName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]