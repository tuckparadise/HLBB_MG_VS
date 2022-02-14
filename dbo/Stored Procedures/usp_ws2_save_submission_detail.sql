CREATE procedure [dbo].[usp_ws2_save_submission_detail]
@arn nvarchar(100) = null ,
@workflow nvarchar(100) = null ,
@filename_original nvarchar(100) = null ,
@filename_new nvarchar(100) = null ,
@filecontent nvarchar(max) = null ,
@filetype nvarchar(100) = null ,
@attachmentuploaddate nvarchar(100) = null ,
@fe_file_url nvarchar(100) = null ,
@fe_fireeye_id nvarchar(100) = null ,
@md5checksum binary(32)= null , 
@error nvarchar(max) = null output 
as
begin
	
	--20210721 start remove existing atachment 
	delete attachment_detail 
	where arn = @arn 
		and workflow = @workflow 
		and  SHA2_256 = @md5checksum
	--20210721 end remove existing atachment 
	
	--20210721 start validate FE ID
	if (isnull(@fe_fireeye_id,'') = '')
	begin
		declare @error2 nvarchar(max)
		set @error2 = 'FE ID cannot be blank. arn=' + @arn +'.Workflow=' + @workflow + '.SHA2_256='+ cast(@md5checksum as varchar(max))

		RAISERROR (@error2 , 16, 1);
	end 
	--20210721 end validate FE ID

	insert into attachment_detail
	values (@arn, @workflow, @filename_original, @filename_new, @filecontent, @filetype, @attachmentuploaddate, @fe_file_url, @fe_fireeye_id,'','',null,getdate(),getdate(), @md5checksum)
end