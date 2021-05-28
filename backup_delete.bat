:: Script Name: Database Backup Script
:: Author: LonoxX | Panda-Network
:: Note: Use for Windows
:: Description: MySQL Database Backup Script 
:: Discord https://discord.gg/z8ScRvf
@echo off
SETLOCAL

rem ----SETTINGS--------------------------------

set "BackupPath=C:\_Backup\SQL Backups"
set "MaxBackups=150"

rem -------------------------------------------------


set "BackupFile=????????_??????__database.sql"

echo old database backups will be destroyed... [%BackupPath%]


for /F "eol=; skip=%MaxBackups% tokens=* delims=," %%i in ('dir "%BackupPath%\%BackupFile%" /O:-N /b') do (
    echo %BackupPath%\%%i
    del "%BackupPath%\%%i"
)