choco install sql-server-express --version 13.1.4001.0 -y
choco install sql-server-management-studio -y
sqlcmd -S .\SQLEXPRESS -i "Enable login sa 12345" -e -o "sql.log" -u
sqlcmd -S .\SQLEXPRESS -i "Enable Contained Database Authentication.sql" -e -o "sql.log" -u
sc.exe stop MSSQL$SQLEXPRESS
sleep 5
sc.exe start MSSQL$SQLEXPRESS
sleep 5
sqlcmd -S .\SQLEXPRESS -U sa -P 12345 -Q "SELECT GETDATE()"