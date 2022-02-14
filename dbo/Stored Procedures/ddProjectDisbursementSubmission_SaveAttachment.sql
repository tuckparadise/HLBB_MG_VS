CREATE   procedure [dbo].[ddProjectDisbursementSubmission_SaveAttachment]
@draftID nvarchar(max) = null,
@arn nvarchar(max) = null,
@attachment nvarchar(max) = null 
as
begin	
	
	/*
	declare @attachmentname nvarchar(max)
	select @attachmentname = dbo.ufn_getPDFImageName(@attachment)

	INSERT INTO [dbo].[ddProjectSubmissionAttachment]
           ([ARN]
           ,[ProjectCode]
           ,[Attachment]
           ,[CreatedDate]
           ,[AttachmentName]
           ,[DraftID])
	values (@arn, null, @attachment, getdate(), @attachmentname, @draftID)
	*/
	declare @checksum binary(32), 
	@attachmentfilename  nvarchar(max) = null ,
	@attachmentcontent  nvarchar(max) = null ,
	@attachmentfiletype  nvarchar(max) = null

	set @attachmentfilename = dbo.ufn_getPDFImageName((CONVERT(XML, @attachment)))
	set @attachmentcontent = dbo.[ufn_getPDFImage]((CONVERT(XML, @attachment)))
	set @attachmentfiletype = dbo.[ufn_getPDFImageNameFileType]((CONVERT(XML, @attachment)))

	set @checksum = HASHBYTES('SHA2_256', @attachmentcontent) 

	--insert into attachment_staging
	--values (@arn + '_' +@draftID , 'ProjectSubmission', @attachmentfilename, @attachmentcontent, @attachmentfiletype, getdate(), getdate(),getdate(), @checksum)	
	
	if not exists 
	(
		select 1
		from attachment_staging
		where arn = @arn + '_' +@draftID 
			and workflow = 'ProjectSubmission'
			and SHA2_256 = @checksum
	)
	begin
		insert into attachment_staging
		values (@arn + '_' +@draftID , 'ProjectSubmission', @attachmentfilename, @attachmentcontent, @attachmentfiletype, getdate(), getdate(),getdate(), @checksum)	
	end 
	

end