﻿create procedure [dbo].[usp_valuersubmission_setuploadcomplete]
@arn nvarchar(100) = null ,
@error nvarchar(max) = null output 
as
begin
	update SQLValuerDPSubmission_Staging
	set attachmentuploaded = 1
	where arn = @arn
end