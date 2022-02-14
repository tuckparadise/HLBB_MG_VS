create procedure [dbo].[usp_solicitorsubmission_setuploadcomplete]
@arn nvarchar(100) = null ,
@error nvarchar(max) = null output 
as
begin
	update SQLSolicitorDPSubmission_Staging
	set attachmentuploaded = 1
	where arn = @arn
end