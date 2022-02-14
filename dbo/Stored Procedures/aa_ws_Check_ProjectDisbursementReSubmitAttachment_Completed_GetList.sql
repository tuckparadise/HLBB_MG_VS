create          procedure [dbo].[aa_ws_Check_ProjectDisbursementReSubmitAttachment_Completed_GetList]
as
begin
	
	SELECT [arn] as RejectedID_Arn
      ,[workflow]
      ,[checkcount]
      ,[job_status]
      ,[result]
      ,[CreatedDate]
      ,[UpdatedDate]
      ,[lock]
	  ,dbo.ufn_DevPortalResubmit_GetCaseNumber ([arn]) as ARN 		
		,dbo.[ufn_DevPortalReSubmit_GetRejectedID] ([arn]) 	 as RejectedID
  FROM [dbo].[attachment_master]
	where 
	 workflow = 'ProjectResubmit' and
	 job_status = 3



  end