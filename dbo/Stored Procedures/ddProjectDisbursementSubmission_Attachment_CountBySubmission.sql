CREATE     procedure [dbo].[ddProjectDisbursementSubmission_Attachment_CountBySubmission]
@draftID nvarchar(max) = null,
@arn nvarchar(max) = null,
@attachmentcount int = null output
as
begin
	set @attachmentcount =
	(select count(*)
	from ddProjectSubmissionAttachment
	where draftID = @draftID 
		and arn = @arn 
	)
end