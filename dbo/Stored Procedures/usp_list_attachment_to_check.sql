CREATE procedure [dbo].[usp_list_attachment_to_check]
@arn nvarchar(100) = null,
@workflow nvarchar(100) = null,
@error nvarchar(max) = null output 
as
begin
	select d.*
	from attachment_detail d
		--inner join attachment_master m on m.workflow = d.workflow and m.arn = d.arn 
	where d.arn = @arn
		and d.workflow = @workflow
		and d.result is null
end