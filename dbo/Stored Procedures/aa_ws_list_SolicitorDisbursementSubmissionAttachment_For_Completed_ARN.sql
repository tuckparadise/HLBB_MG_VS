CREATE   procedure [dbo].[aa_ws_list_SolicitorDisbursementSubmissionAttachment_For_Completed_ARN]
@arn nvarchar(100) = null, 
@error nvarchar(max) = null output 
as
begin
	
	select *
	from attachment_detail
	where arn = @arn
		and workflow = 'DisbursementSolicitorSubmission'

end