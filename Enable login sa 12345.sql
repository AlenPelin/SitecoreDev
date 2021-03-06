USE [master]
GO

--- enable sql logins
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2
GO

--- disable password complexity policy
ALTER LOGIN [sa] WITH CHECK_POLICY=OFF
GO

--- change password and enable login
ALTER LOGIN sa WITH PASSWORD=N'12345'
GO
ALTER LOGIN sa ENABLE
GO