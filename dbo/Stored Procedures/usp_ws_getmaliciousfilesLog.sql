create procedure [dbo].[usp_ws_getmaliciousfilesLog]
  as
  begin
	select * from maliciousfilelog 
  end