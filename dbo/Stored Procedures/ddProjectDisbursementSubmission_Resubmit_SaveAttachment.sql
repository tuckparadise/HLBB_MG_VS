CREATE      procedure [dbo].[ddProjectDisbursementSubmission_Resubmit_SaveAttachment]
@runningID nvarchar(max) = null,
@arn nvarchar(max) = null,
@attachment nvarchar(max) = null 
as
begin	
	
	declare @checksum binary(32), 
	@attachmentfilename  nvarchar(max) = null ,
	@attachmentcontent  nvarchar(max) = null ,
	@attachmentfiletype  nvarchar(max) = null

	set @attachmentfilename = dbo.ufn_getPDFImageName((CONVERT(XML, @attachment)))
	set @attachmentcontent = dbo.[ufn_getPDFImage]((CONVERT(XML, @attachment)))
	set @attachmentfiletype = dbo.[ufn_getPDFImageNameFileType]((CONVERT(XML, @attachment)))

	set @checksum = HASHBYTES('SHA2_256', @attachmentcontent) 

	if not exists 
	(
		select 1
		from attachment_staging
		where arn = @runningID + '_' + @arn 
			and workflow = 'ProjectResubmit'
			and SHA2_256 = @checksum
	)
	begin
		insert into attachment_staging
		values (@runningID + '_' + @arn , 'ProjectResubmit', @attachmentfilename, @attachmentcontent, @attachmentfiletype, getdate(), getdate(),getdate(), @checksum)	
	end 

	--insert into attachment_staging
	--values (@runningID + '_' + @arn, 'ProjectResubmit', @attachmentfilename, @attachmentcontent, @attachmentfiletype, getdate(), getdate(),getdate(), @checksum)
	

end