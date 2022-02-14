﻿CREATE procedure [dbo].[usp_ws_valuerattachment_create_master_data]
@arn nvarchar(100) = null
as
begin
	if not exists 
	(
		select 1 from attachment_master
		where arn = @arn
			and workflow = 'ValuerDPSubmission'
	)
	begin
		insert into attachment_master 
		values (@arn, 'ValuerDPSubmission',0, 0, null, getdate(), getdate(),0)
	end 
	
end