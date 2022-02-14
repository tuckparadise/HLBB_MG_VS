create procedure [dbo].[tbd_getattachmentforpdfpasswordtest]
  as
  begin

	select * from [attachment_staging]
	where arn = 'arn20'
		and workflow = 'ValuerDPSubmission'
  end