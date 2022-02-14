create      procedure [dbo].[ddProjectDisbursementSubmission_Resubmit_CheckDuplicate]
@RunningID nvarchar(max) = null  ,
@arn nvarchar(max) = null  ,
@CaseCount int = null output 
as
begin
	set @CaseCount = 0

	if exists
	(
		select 1
		from attachment_master
		where workflow = 'ProjectResubmit'
			and arn = @RunningID + '_' +  @arn
	)
	begin
		set @CaseCount = 1
	end 
	
end