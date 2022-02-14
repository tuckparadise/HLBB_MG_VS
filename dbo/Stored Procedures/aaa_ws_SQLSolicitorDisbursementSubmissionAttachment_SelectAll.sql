CREATE   procedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_SelectAll]
@arn nvarchar(max) = null
as
begin

	select *
	from aaSolicitorDisbursementSubmissionAttachment
	where arn = @arn 

end