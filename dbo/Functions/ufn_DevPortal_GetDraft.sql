create    function [dbo].[ufn_DevPortal_GetDraft]
(@Folio nvarchar(max))
RETURNS nvarchar(max)
as
begin	
	
	declare @draft nvarchar(max)

	set @draft = (
			select value from 
			(
				select 
				ROW_NUMBER() OVER(ORDER BY getdate()) AS Row#,
				* 
				from STRING_SPLIT (@Folio,'_')  
			) tbl 
			where Row# = 2
		)
	
	return @draft
end