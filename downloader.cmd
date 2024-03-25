@echo off
title DownloadX

set /p folder=Directory to save to: 

if not exist %folder% mkdir %folder%
if exist %folder% cd %folder%

:download
set /p link=Direct link: 
set /p filename=Save as (filename): 

echo Downloading...
:: TODO: Do not invoke powershell
powershell.exe (New-Object Net.WebClient).DownloadFile('%link%', '%filename%')

echo %link%,%filename% >> history.csv

echo Download done!
pause
goto download
