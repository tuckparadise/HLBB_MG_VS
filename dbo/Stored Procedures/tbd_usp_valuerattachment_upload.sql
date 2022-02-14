CREATE procedure [dbo].[tbd_usp_valuerattachment_upload]
@arn nvarchar(100) = null ,
@attachmentfilename  nvarchar(max) = null ,
@attachmentcontent  nvarchar(max) = null ,
@attachmentfiletype  nvarchar(max) = null ,
@attachmentuploaddate datetime = null 
as
begin
	declare @checksum binary(32)

	set @checksum = HASHBYTES('SHA2_256', @attachmentcontent) 

	insert into attachment_staging
	values (@arn, 'ValuerDPSubmission', @attachmentfilename, @attachmentcontent, @attachmentfiletype, @attachmentuploaddate, getdate(),getdate(),@checksum)
end