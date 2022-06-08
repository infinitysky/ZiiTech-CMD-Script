cd /d %~dp0


REM SET system configurations

SET sqlcmdPATH="C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe"
SET sqlcmdPATH1=sqlcmd

SET backupFileName=backupDB.bak



REM SET POS Server IP in the local
SET SMBaddress=192.168.0.210
SET SMBBackupFolder=DBBackup


SET remoteBackupFolder=D:\DBBackup
SET remoteDATABASEFile=%remoteBackupFolder%\%backupFileName%

SET localBackupFolder=%~dp0
SET localDATABASEFile=%localBackupFolder%%backupFileName%

SET remoteSQLInstance=192.168.0.210\SQLEXPRESS2008R2,9899
SET remoteAccessUserName=sa
SET remoteAccessPassword=0000

SET localSQLInstance=localhost\sqlexpress,9899

SET remoteDatabaseNAME=MainDB
SET backupDBNAME=BackupDB

SET remoteDBBackupFile=\\%SMBaddress%\%SMBBackupFolder%\%backupFileName%

SET backupSQL="BACKUP DATABASE %remoteDatabaseNAME% TO DISK = '%remoteDATABASEFile%';"
SET restoreSQL="RESTORE DATABASE %backupDBNAME% FROM DISK = '%localDATABASEFile%';"


REM clean cache
del /f %localDATABASEFile%
del /f %remoteDBBackupFile%



REM add ZiiPOS account for DDA
%sqlcmdPATH% -S %remoteSQLInstance% -U %remoteAccessUserName% -P %remoteAccessPassword%  -Q %backupSQL%

copy %remoteDBBackupFile% %localDATABASEFile%


%sqlcmdPATH% -S %localSQLInstance% -Q %restoreSQL%





pause
