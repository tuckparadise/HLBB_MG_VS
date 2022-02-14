create procedure [dbo].[usp_getErrorLog]
  as
  begin
	select * from errorlog 
  end