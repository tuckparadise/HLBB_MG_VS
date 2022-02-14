CREATE procedure [dbo].[usp_ws_getfailedattachments]
  @arn nvarchar(100) = null,
  @workflow nvarchar(100) = null,
  @error nvarchar(max) = null output
  as
  begin
	select *
	from [attachment_detail]
	where arn = @arn 
		and workflow = @workflow
		and result = 'failed'
  end