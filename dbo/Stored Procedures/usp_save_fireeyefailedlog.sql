create   procedure [dbo].[usp_save_fireeyefailedlog]
@logs nvarchar(max) = null 
as
begin
	insert into FireEyeFailedLog
	values (getdate(),@logs)
end