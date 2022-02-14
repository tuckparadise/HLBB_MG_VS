create procedure [dbo].[usp_ws_list_SolicitorSubmissionAttachment_For_Completed_ARN]
@arn nvarchar(100) = null, 
@error nvarchar(max) = null output 
as
begin
	
	select *
	from attachment_detail
	where arn = @arn
		and workflow = 'SolicitorDPSubmission'

end