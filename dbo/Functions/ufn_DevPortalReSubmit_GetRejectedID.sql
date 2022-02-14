CREATE       function [dbo].[ufn_DevPortalReSubmit_GetRejectedID]
(@Folio nvarchar(max))
RETURNS nvarchar(max)
as
begin	
	
	declare @RejectedRunningID nvarchar(max)

	set @RejectedRunningID = (
		select value from 
		(
			select 
			ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
			* 
			from STRING_SPLIT (@Folio,'_')  
		) tbl 
		where Row# = 1	
	)
	return @RejectedRunningID
end