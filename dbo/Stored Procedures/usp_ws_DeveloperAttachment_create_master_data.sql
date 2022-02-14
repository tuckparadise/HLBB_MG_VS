CREATE   procedure [dbo].[usp_ws_DeveloperAttachment_create_master_data]
@draftID nvarchar(max) = null,
@arn nvarchar(max) = null
as
begin
	insert into attachment_master
	values (@arn + '_' +@draftID ,'ProjectSubmission', 0, 0, null, getdate(), getdate(),0)

end