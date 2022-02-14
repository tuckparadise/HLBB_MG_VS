CREATE procedure [dbo].[usp_list_SolicitorSubmissionAttachmentInStaging]
@arn nvarchar(100) = null 
as
begin

	select filecontent as ItemContent,
		[filename] as ItemFileName,
		filetype as ItemFileType
	from attachment_staging
	where arn = @arn 	
		and workflow = 'SolicitorDPSubmission'
	
end