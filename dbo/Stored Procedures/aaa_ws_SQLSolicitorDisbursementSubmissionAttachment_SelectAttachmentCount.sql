CREATE     procedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_SelectAttachmentCount]
@arn nvarchar(max) = null
as
begin

	select count(*) as AttachmentCount
	from aaSolicitorDisbursementSubmissionAttachment
	where arn = @arn 

end