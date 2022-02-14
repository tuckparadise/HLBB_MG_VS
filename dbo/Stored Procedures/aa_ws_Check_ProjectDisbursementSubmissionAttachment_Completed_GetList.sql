create        procedure [dbo].[aa_ws_Check_ProjectDisbursementSubmissionAttachment_Completed_GetList]
as
begin
	
	SELECT [arn] as Draft_Arn
      ,[workflow]
      ,[checkcount]
      ,[job_status]
      ,[result]
      ,[CreatedDate]
      ,[UpdatedDate]
      ,[lock]
	  ,dbo.ufn_DevPortal_GetCaseNumber ([arn]) as ARN 		
		,dbo.ufn_DevPortal_GetDraft ([arn]) 	 as Draft
  FROM [dbo].[attachment_master]
	where 
	 workflow = 'ProjectSubmission' and
	 job_status = 3



  end