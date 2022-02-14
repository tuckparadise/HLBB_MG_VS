create       procedure [dbo].[aa_ws_list_ProjectDisbursementResubmissionAttachment_For_Completed_ARN]
@running_arn nvarchar(100) = null, 
@error nvarchar(max) = null output 
as
begin
	
	select *
	from attachment_detail
	where arn = @running_arn
		and workflow = 'ProjectResubmit'

end