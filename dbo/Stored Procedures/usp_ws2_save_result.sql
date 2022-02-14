CREATE procedure [dbo].[usp_ws2_save_result]
@arn nvarchar(100)= null ,
@workflow nvarchar(100)= null ,
@fe_fireeye_id  nvarchar(100)= null ,
@errorcode nvarchar(100)= null ,
@errordesc nvarchar(max)= null ,
@SHA2_256 binary(32) = null, 
@error nvarchar(max)= null output 
as
begin
	
	declare @result nvarchar(100)
	set @result = 'passed'

	if (ltrim(rtrim(@errorcode)) <> '')
	begin
		set @result = 'failed'
	end 	
	
	update attachment_detail
	set result = @result,
		fe_failed_code = @errorcode,
		fe_failed_description = @errordesc,
		UpdatedDate = getdate()
	where arn = @arn
		and workflow = @workflow
		--and fe_fireeye_id = @fe_fireeye_id
		and SHA2_256 = @SHA2_256
	
	if (@result = 'passed')
	begin
		insert into resultlog ([arn]
			   ,[workflow]
			   ,[filename_original]
			   ,[filename_new]
			   ,[filecontent]
			   ,[filetype]
			   ,[attachmentuploaddate]
			   ,[fe_file_url]
			   ,[fe_fireeye_id]
			   ,[fe_failed_description]
			   ,[fe_failed_code]
			   ,[result]
			   ,[CreatedDate]
			   ,[UpdatedDate]
			   ,SHA2_256)
		select [arn]
			   ,[workflow]
			   ,[filename_original]
			   ,[filename_new]
			   ,''
			   ,[filetype]
			   ,[attachmentuploaddate]
			   ,[fe_file_url]
			   ,[fe_fireeye_id]
			   ,[fe_failed_description]
			   ,[fe_failed_code]
			   ,[result]
			   ,[CreatedDate]
			   ,[UpdatedDate]
			   ,SHA2_256
		from attachment_detail
		where arn = @arn
			and workflow = @workflow
			--and fe_fireeye_id = @fe_fireeye_id
			and SHA2_256 = @SHA2_256
	end 
	else
	begin
		insert into maliciousfilelog ([arn]
			   ,[workflow]
			   ,[filename_original]
			   ,[filename_new]
			   ,[filecontent]
			   ,[filetype]
			   ,[attachmentuploaddate]
			   ,[fe_file_url]
			   ,[fe_fireeye_id]
			   ,[fe_failed_description]
			   ,[fe_failed_code]
			   ,[result]
			   ,[CreatedDate]
			   ,[UpdatedDate]
			   ,SHA2_256)
		select [arn]
			   ,[workflow]
			   ,[filename_original]
			   ,[filename_new]
			   ,[filecontent]
			   ,[filetype]
			   ,[attachmentuploaddate]
			   ,[fe_file_url]
			   ,[fe_fireeye_id]
			   ,[fe_failed_description]
			   ,[fe_failed_code]
			   ,[result]
			   ,[CreatedDate]
			   ,[UpdatedDate]
			   ,SHA2_256
		from attachment_detail
		where arn = @arn
			and workflow = @workflow
			--and fe_fireeye_id = @fe_fireeye_id
			and SHA2_256 = @SHA2_256
	end 
	

end