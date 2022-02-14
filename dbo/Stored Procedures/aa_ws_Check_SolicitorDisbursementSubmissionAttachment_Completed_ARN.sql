CREATE   procedure [dbo].[aa_ws_Check_SolicitorDisbursementSubmissionAttachment_Completed_ARN]
  @error nvarchar(max) = null output 
  as
  begin
	
	declare @arn nvarchar(100)
	declare @result nvarchar(100)

	if exists
	(
		select 1
		from attachment_master
		where job_status = 3
			and workflow = 'DisbursementSolicitorSubmission'
	)
	begin
		select @arn = arn ,
			@result = result 
		from attachment_master
		where job_status = 3
			and workflow = 'DisbursementSolicitorSubmission'
		
		select @arn as arn , @result as result
	end 
	


  end