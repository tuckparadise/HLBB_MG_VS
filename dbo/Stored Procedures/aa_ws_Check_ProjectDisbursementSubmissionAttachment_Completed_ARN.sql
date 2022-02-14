CREATE      procedure [dbo].[aa_ws_Check_ProjectDisbursementSubmissionAttachment_Completed_ARN]
  @error nvarchar(max) = null output ,
  @draftID nvarchar(max) = null output ,
  @arn nvarchar(max) = null output ,
  @result nvarchar(max) = null output ,
  @draft_arn nvarchar(max) = null output ,
    @datacount nvarchar(max) = null output 
  as
  begin
	
	set @datacount = 0

	--declare @draft_arn nvarchar(max)
	--declare @result nvarchar(100)

	if exists
	(
		select 1
		from attachment_master
		where job_status = 3
			and workflow = 'ProjectSubmission'
	)
	begin
		set @datacount = 1

		select top 1 @draft_arn = arn ,
			@result = result 
		from attachment_master
		where job_status = 3
			and workflow = 'ProjectSubmission'
		order by UpdatedDate asc 
		
		set @arn = (
			select value from 
			(
				select 
				ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
				* 
				from STRING_SPLIT (@draft_arn,'_')  
			) tbl 
			where Row# = 1
		)

		set @draftID = (
			select value from 
			(
				select 
				ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
				* 
				from STRING_SPLIT (@draft_arn,'_')  
			) tbl 
			where Row# = 2
		)

		
				

		--select @arn as arn , @result as result
	end 
	


  end