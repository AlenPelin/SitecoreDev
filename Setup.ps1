choco install 7zip
choco install googlechrome
choco install filezilla
choco install notepadplusplus
choco install visualstudiocode
choco install freecommander-xe
choco install ilspy
choco install sourcetree
choco install postman
choco install winmerge
choco install p4merge
Add-WindowsFeature Web-Server
Add-WindowsFeature NET-Framework-45-ASPNET
Add-WindowsFeature Web-Asp-Net45
choco install sql-server-express --version 13.1.4001.0 -y
choco install sql-server-management-studio -y
sqlcmd -S .\SQLEXPRESS -i "Enable login sa 12345" -e -o "sql.log" -u
sqlcmd -S .\SQLEXPRESS -i "Enable Contained Database Authentication.sql" -e -o "sql.log" -u
sc.exe stop MSSQL$SQLEXPRESS
sleep 5
sc.exe start MSSQL$SQLEXPRESS
sleep 5
sqlcmd -S .\SQLEXPRESS -U sa -P 12345 -Q "SELECT GETDATE()"
