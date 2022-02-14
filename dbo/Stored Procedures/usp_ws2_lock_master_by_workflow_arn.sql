create   procedure [dbo].[usp_ws2_lock_master_by_workflow_arn]
@workflow nvarchar(max) = null,
@arn nvarchar(max) = null
as
begin
	update attachment_master
	set lock = 1,
		UpdatedDate = getdate()
	where workflow = @workflow
		and arn = @arn
end