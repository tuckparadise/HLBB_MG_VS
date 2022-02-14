CREATE        procedure [dbo].[aa_ws_Check_ProjectResubmissionAttachment_Completed_ARN]
  @error nvarchar(max) = null output ,
  @RejectedRunningID nvarchar(max) = null output ,
  @arn nvarchar(max) = null output ,
  @result nvarchar(max) = null output ,
  @RejectedRunningID_arn nvarchar(max) = null output ,
  @datacount nvarchar(max) = null output 
  as
  begin
	
	  
	set @datacount = 0

	if exists
	(
		select 1
		from attachment_master
		where job_status = 3
			and workflow = 'ProjectResubmit'
	)
	begin
		set @datacount = 1

		set @RejectedRunningID_arn = (select top 1 arn from attachment_master
			where job_status = 3
			and workflow = 'ProjectResubmit' 
			order by UpdatedDate asc 
			)

		set @result = (select result from attachment_master
			where job_status = 3
			and workflow = 'ProjectResubmit' 
			and arn = @RejectedRunningID_arn
			)
		
		set @RejectedRunningID = (
			select value from 
			(
				select 
				ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
				* 
				from STRING_SPLIT (@RejectedRunningID_arn,'_')  
			) tbl 
			where Row# = 1
		)

		set @arn = (
			select value from 
			(
				select 
				ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
				* 
				from STRING_SPLIT (@RejectedRunningID_arn,'_')  
			) tbl 
			where Row# = 2
		)
		
		
	end



  end