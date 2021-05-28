:: Script Name: Database Backup Script
:: Author: LonoxX | Panda-Network
:: Note: Use for Windows
:: Description: MySQL Database Backup Script 
:: Discord https://discord.gg/z8ScRvf
@echo off
SETLOCAL

rem ----SETTINGS--------------------------------

set "MySQLPath=C:\Program Files\MariaDB 10.5"
set "BackupPath=C:\_Backup\SQL Backups"

set "MySQLDB=DB_NAME"
set "MySQLUser=DB_USER"
set "MySQLPwd=DB_PASSWORD"
set "MySQLPort=3306"

rem -------------------------------------------------


set "BackupDate=%date:~-4%%date:~-7,2%%date:~-10,2%"
set "BackupTime=%time:~-11,2%%time:~-8,2%%time:~-5,2%"

set "BackupFile=%BackupDate%_%BackupTime%_database.sql"

%MySQLPath:~0,2%

cd %MySQLPath%\bin

echo Server database backup is being created ... [database: %MySQLDB%]

mysqldump -u%MySQLUser% -p%MySQLPwd% %MySQLDB% --port=%MySQLPort%> "%BackupPath%\%BackupFile%"

