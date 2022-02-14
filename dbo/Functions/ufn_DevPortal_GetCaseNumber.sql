create   function [dbo].[ufn_DevPortal_GetCaseNumber]
(@Folio nvarchar(max))
RETURNS nvarchar(max)
as
begin	
	
	declare @arn nvarchar(max)

	set @arn = (
			select value from 
			(
				select 
				ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
				* 
				from STRING_SPLIT (@Folio,'_')  
			) tbl 
			where Row# = 1
		)
	
	return @arn
end