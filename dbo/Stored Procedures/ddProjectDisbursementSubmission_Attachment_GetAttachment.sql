create   procedure [dbo].[ddProjectDisbursementSubmission_Attachment_GetAttachment]
@draftID nvarchar(max) = null,
@arn nvarchar(max) = null,
@attachment nvarchar(max) = null output 
as
begin
	set @attachment = 
	(select attachment
	from ddProjectSubmissionAttachment
	where draftID = @draftID 
		and arn = @arn 
	)
end