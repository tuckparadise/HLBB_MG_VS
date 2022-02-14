CREATE     procedure [dbo].[aa_ws_list_ProjectDisbursementSubmissionAttachment_For_Completed_ARN]
@draft_arn nvarchar(100) = null, 
@error nvarchar(max) = null output 
as
begin
	
	select *
	from attachment_detail
	where arn = @draft_arn
		and workflow = 'ProjectSubmission'

end