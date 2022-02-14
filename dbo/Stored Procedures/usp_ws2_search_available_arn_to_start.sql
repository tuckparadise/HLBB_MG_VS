CREATE procedure [dbo].[usp_ws2_search_available_arn_to_start]
@error nvarchar(max) = null output 
as
begin

	declare @arn nvarchar(100)
	declare @workflow nvarchar(100)

	set @error = ''

	declare @datetocheck datetime 
	--set @datetocheck = DATEADD(day, -1, getdate() ) 
	-- change the timing here
	set @datetocheck = DATEADD(hour, -1, getdate() ) 

	-- release lock if more than 1 hour 
	update attachment_master
	set lock = 0 
	where [job_status] = 0
		and lock = 1
		and UpdatedDate < @datetocheck  
			
	select arn , 
			workflow 
	from attachment_master
	where [job_status] = 0 
		and lock = 0	
	order by UpdatedDate

	/*
	update attachment_master
	set lock = 1,
		UpdatedDate = getdate()
	where [job_status] = 0 
		and lock = 0	
	*/
	/*
	if exists
	(
		select 1
		from attachment_master
		where lock = 1
			and [job_status] = 0 
			and UpdatedDate < @datetocheck 
	)
	begin
		--declare @arn nvarchar(100)
		--declare @workflow nvarchar(100)

		select top 1 @arn = arn, 
			@workflow = workflow
		from attachment_master
		where lock = 1
			and [job_status] = 0 
			and UpdatedDate < @datetocheck  
		order by UpdatedDate asc 
		
		delete attachment_detail
		where arn = @arn
			and workflow = @workflow

		update attachment_master
		set UpdatedDate = getdate()
		where arn = @arn
			and workflow = @workflow

		select @arn as arn, @workflow as workflow

	end 
	else
	begin
		if exists 
		(
			select 1
			from attachment_master
			where lock = 0	
				and [job_status] = 0 
		)
		begin
			select top 1 @arn = arn , 
				@workflow = workflow 
			from attachment_master
			where [job_status] = 0 
				and lock = 0
			order by UpdatedDate asc 
		
			update attachment_master
			set lock = 1 ,
				UpdatedDate = getdate()
			where arn = @arn
				and workflow = @workflow
		
			select @arn as arn, @workflow as workflow

		end 
		else
		begin
			set @error = 'no records available'
		end 
	end 
	*/
	
end