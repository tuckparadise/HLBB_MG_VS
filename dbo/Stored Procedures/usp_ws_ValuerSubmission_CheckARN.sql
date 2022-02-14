CREATE procedure [dbo].[usp_ws_ValuerSubmission_CheckARN]
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
			and workflow = 'ValuerDPSubmission'
	)
	begin
		select 1 as result 
	end 

end