USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ctriana]    Script Date: 21/02/2021 8:37:57 a. m. ******/
CREATE LOGIN [ctriana] WITH PASSWORD=N'NMa8XdXNkeSJsswDxETIpFHueDTNNS44JJlXV9bnDmI=', DEFAULT_DATABASE=[PruebaIntergrupo], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO

ALTER LOGIN [ctriana] DISABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [ctriana]
GO

ALTER SERVER ROLE [securityadmin] ADD MEMBER [ctriana]
GO

ALTER SERVER ROLE [serveradmin] ADD MEMBER [ctriana]
GO

ALTER SERVER ROLE [processadmin] ADD MEMBER [ctriana]
GO

ALTER SERVER ROLE [diskadmin] ADD MEMBER [ctriana]
GO

ALTER SERVER ROLE [dbcreator] ADD MEMBER [ctriana]
GO

ALTER SERVER ROLE [bulkadmin] ADD MEMBER [ctriana]
GO

