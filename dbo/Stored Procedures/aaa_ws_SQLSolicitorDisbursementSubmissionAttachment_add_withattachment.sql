﻿CREATE     procedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_add_withattachment]
@solicitoremail nvarchar(100) = null,
@arn nvarchar(100) = null ,
@Attachment nvarchar(max) = null,
@CreatedDate date = null, 
@Error nvarchar(max) = null output, 
@AttachmentID bigint = null output 
as
begin
	set @Error = ''
	declare @proceed int 
	set @proceed = 1	
		
	if (@Attachment = '' or @Attachment = '<file><name>scnull</name><content>scnull</content></file>' or @Attachment is null)
	begin
		set @proceed = 0
	end 
	
	if (@proceed = 1)
	begin 
		declare @ExistingAttachmentCount int 

		select @ExistingAttachmentCount=  count(*)
		from aaSolicitorDisbursementSubmissionAttachment
		where arn = @arn 		

		if  (@ExistingAttachmentCount = 10 )
		begin
			--set @Error = @Error + ''
			set @error =  @error + 'Only max 10 attachement files are allowed <br>'
		end 

		if (@Error = '')
		begin
			declare @attachmentname nvarchar(max)
			select @attachmentname = dbo.ufn_getPDFImageName(@Attachment)

			insert into dbo.aaSolicitorDisbursementSubmissionAttachment 
					(arn, solicitorcode, Attachment, createddate,AttachmentName)
			values (@arn,@solicitoremail, @Attachment, getdate(),@attachmentname  )

			select top 1 @AttachmentID = AttachmentID 
			from aaSolicitorDisbursementSubmissionAttachment
			where arn = @arn 
				and solicitorcode = @solicitoremail
			order by AttachmentID desc 
		end 

		
		/*
		if not exists 
		(
			select 1 
			from dbo.aaSolicitorDisbursementSubmissionAttachment
			where solicitorcode = @solicitoremail 
				and arn = @arn 						
		)
		begin
			set @AttachmentID = 1
			
			insert into dbo.aaSolicitorDisbursementSubmissionAttachment 
				(arn, solicitorcode,AttachmentID, createddate ) 			
			values (@arn,@solicitoremail,@AttachmentID, @CreatedDate )
		end 
		else
		begin 
			select @AttachmentID =  max(AttachmentID) 
			from aaSolicitorDisbursementSubmissionAttachment
			where solicitorcode = @solicitoremail 
				and arn = @arn 

			set @AttachmentID = @AttachmentID + 1			

			insert into dbo.aaSolicitorDisbursementSubmissionAttachment 
				(arn, solicitorcode,AttachmentID, createddate)
			values (@arn,@solicitoremail,@AttachmentID, @CreatedDate  )

		end 
		
		select @AttachmentID as AttachmentID
		*/
	end  
end