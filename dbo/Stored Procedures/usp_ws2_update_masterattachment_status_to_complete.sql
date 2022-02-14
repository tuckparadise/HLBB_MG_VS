CREATE procedure [dbo].[usp_ws2_update_masterattachment_status_to_complete]
@arn nvarchar(100)= null ,
@workflow nvarchar(100)= null ,
@error nvarchar(max)= null output 
as
begin
	-- set to complete if no attachment and check result for every case if do have attachment 
	if exists 
	(
		select 1
		from attachment_detail
		where arn = @arn
			and workflow = @workflow	
	)
	begin
		-- set result of master table if all files completed scanning process, else set check count in master table 
		if not exists 
		(
			select 1
			from attachment_detail
			where result is null 
				and arn = @arn
				and workflow = @workflow		
		)
		begin
			-- set result of master table if all files completed scanning process
			declare @result nvarchar(100)
			set @result = 'passed'

			if exists
			(
				select 1
				from attachment_detail
				where result = 'failed'
					and arn = @arn
					and workflow = @workflow	
			)
			begin
				set @result = 'failed'
			end 

			update attachment_master
			set job_status = 3,
				UpdatedDate = getdate(),
				result = @result,
				lock = 0
			where arn = @arn
				and workflow = @workflow
		end 
		else
		begin
			--set check count in master table
			declare @checkcount int

			select @checkcount = checkcount
			from attachment_master
			where arn = @arn
				and workflow = @workflow

			update attachment_master
			set checkcount = @checkcount +1,
				UpdatedDate = getdate(),
				lock =0
			where arn = @arn
				and workflow = @workflow
		end 
	end 
	else
	begin
		-- set to complete if no attachment 
		update attachment_master
			set job_status = 3,
				UpdatedDate = getdate(),
				result = 'passed',
				lock = 0
			where arn = @arn
				and workflow = @workflow
	end 

	
end