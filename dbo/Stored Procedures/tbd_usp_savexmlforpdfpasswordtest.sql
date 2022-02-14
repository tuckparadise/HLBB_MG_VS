create procedure [dbo].[tbd_usp_savexmlforpdfpasswordtest]
@input nvarchar(max) = null 
  as
  begin

	insert into tbd_k2_attachment (afile)
	values (@input)
	
  end