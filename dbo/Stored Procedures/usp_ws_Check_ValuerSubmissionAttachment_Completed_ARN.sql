CREATE procedure [dbo].[usp_ws_Check_ValuerSubmissionAttachment_Completed_ARN]
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
			and workflow = 'ValuerDPSubmission'
	)
	begin
		select @arn = arn ,
			@result = result 
		from attachment_master
		where job_status = 3
			and workflow = 'ValuerDPSubmission'
			/*
		update attachment_master
		set job_status = 4,
			updateddate = getdate()
		where arn = @arn
			and workflow = 'SolicitorDPSubmission'
			*/
		select @arn as arn , @result as result
	end 
	


  end