@ECHO OFF
title downloader
set link=
set folder=
set filetype=
set filename=%random%
set /p folder=mappa!
mkdir %folder%
cd %folder%
:Download
set filename=%random%
set /p link=link!
set /p filetype=file type!
echo Downloading!
powershell.exe (New-Object Net.WebClient).DownloadFile('%link%', 'feladat_matek_%filename%.%filetype%')
echo link %link% name felatad_matek_%filename%.%filetype% >> names.txt
echo Download Done!
timeout /t 4
goto :Download