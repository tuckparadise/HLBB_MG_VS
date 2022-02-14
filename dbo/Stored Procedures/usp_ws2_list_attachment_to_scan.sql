CREATE procedure [dbo].[usp_ws2_list_attachment_to_scan]
@arn nvarchar(100) = null,
@workflow nvarchar(100) = null,
@error nvarchar(max) = null output 
as
begin
	select *
	from attachment_staging
	where arn = @arn
		and workflow = @workflow
	/* 20210330- remove checking on the sha256
		and sha2_256 not in 
	( select sha2_256 
	from resultlog
	where arn = @arn
		and workflow = @workflow
	)
	*/	
end