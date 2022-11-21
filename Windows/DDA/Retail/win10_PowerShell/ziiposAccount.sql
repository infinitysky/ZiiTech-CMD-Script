USE [master] 
GO 
CREATE LOGIN [ZiiPos] WITH PASSWORD=N'ZiiPos884568', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF 
GO 
EXEC master..sp_addsrvrolemember @loginame = N'ZiiPos', @rolename = N'sysadmin' 
GO 
