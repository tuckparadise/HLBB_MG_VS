CREATE procedure [dbo].[usp_ws2_update_masterattachment_status_to_inprogress]
@arn nvarchar(100) = null,
@workflow nvarchar(100) = null,
@fe_token nvarchar(max) = null,
@error nvarchar(max) = null output
as
begin
	update attachment_master
	set [job_status] = 2,
		updateddate = getdate(),
		lock = 0
	where arn = @arn
		and workflow = @workflow
end