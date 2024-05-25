
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> 
-- =============================================
CREATE PROCEDURE insert_into_User_Account
	(
	@fullname nvarchar(200),
	@email nvarchar(200),
	@gender int,
	@address nvarchar(200),
	@DOB date,
	@Image nvarchar(500),
	@role_id int,	
	@username nvarchar(200),
	@password nvarchar(500)
	)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Users]([fullname], [email], [gender] ,[address], [DOB], [Image], [role_id]) VALUES(@fullname,@email,@gender,@address,@DOB,@Image,@role_id)
	DECLARE @X INT = (SELECT MAX(user_id) FROM Users)
	INSERT INTO [dbo].[Account] ([user_id], [username], [password]) VALUES(@X,@username,@password)
END
GO
