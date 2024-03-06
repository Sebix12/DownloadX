@ECHO OFF
title downloader
set link=
set folder=
set filetype=
set /p folder=folder$
if not exist %folder% mkdir %folder%
if exist %folder% cd %folder%
:Download
set /p link=link$
set /p filename=name$
set /p filetype=file type$
echo Downloading!
powershell.exe (New-Object Net.WebClient).DownloadFile('%link%', '%filename%.%filetype%')
echo link %link% name %filename%.%filetype% >> names.txt
echo Download Done!
timeout /t 4
goto :Download
