CREATE     procedure [dbo].[aa_ws_SolicitorDisbursementSubmission_CheckARN]
@arn nvarchar(100) = null,
@error nvarchar(max) = null output 
as
begin

	set @error = ''

	if not exists 
	(
		select 1
		from attachment_master
		where arn = @arn 
			and workflow = 'DisbursementSolicitorSubmission'
	)
	begin
		select 1 as result
	end 
	

end