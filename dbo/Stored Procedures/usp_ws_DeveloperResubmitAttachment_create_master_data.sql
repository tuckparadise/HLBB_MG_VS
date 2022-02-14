CREATE    procedure [dbo].[usp_ws_DeveloperResubmitAttachment_create_master_data]
@RunningID nvarchar(max) = null  ,
@arn nvarchar(max) = null  
as
begin
	if not exists
	(
		select 1
		from attachment_master
		where arn = @RunningID + '_' +  @arn
			and workflow = 'ProjectResubmit'
	)
	begin
		insert into attachment_master
		values (@RunningID + '_' +  @arn,'ProjectResubmit', 0, 0, null, getdate(), getdate(),0)
	end 
	

end