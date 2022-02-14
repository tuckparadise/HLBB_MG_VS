CREATE   procedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_DeleteAttachment]
@arn nvarchar(max) = null,
@AttachmentID nvarchar(max) = null,
@error nvarchar(max) = null output 
as
begin
	delete from aaSolicitorDisbursementSubmissionAttachment
	where arn = @arn 
		and AttachmentID = @AttachmentID
end