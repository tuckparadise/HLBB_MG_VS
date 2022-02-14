CREATE     procedure [dbo].[usp_save_fireeyelog_logout]
@arn nvarchar(max) = null ,
@workflow nvarchar(max) = null ,
@filename nvarchar(max) = null ,
@sha2_256 nvarchar(max) = null ,
@logs nvarchar(max) = null ,
@StatusCode nvarchar(max) = null ,
@StatusDescription nvarchar(max) = null ,
--@ErrorMessage nvarchar(max) = null ,
--@ErrorException nvarchar(max) = null ,
@IsSuccessful nvarchar(max) = null ,
@ResponseStatus nvarchar(max) = null ,
@Request nvarchar(max) = null ,
@Headers nvarchar(max) = null 
as
begin	
	INSERT INTO [dbo].FireEyeAPILog_logout
           ([InsertedDate]
           ,[arn]
           ,[workflow]
           ,[filename]
           ,[sha2_256]
           ,[Logs]
		    ,[StatusCode]
		   ,[StatusDescription]
		   ,[ErrorMessage]
		   ,[ErrorException]
		   ,[IsSuccessful]
		   ,[ResponseStatus]
		   ,[Request]
		   ,[Headers]
		   )
     VALUES
           (getdate()
           ,@arn
           ,@workflow
           ,@filename
           ,@sha2_256
           ,@logs
		   ,@StatusCode
		   ,@StatusDescription
		   ,null
		   ,null
		   ,@IsSuccessful
		   ,@ResponseStatus
		   ,@Request
		   ,@Headers
		   )
end