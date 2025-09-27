echo off
title compiling QC for %* using studiomdl.bat
color 4F
"%VPROJECT%\..\bin\studiomdl.exe" -verbose -game "%VPROJECT%" %*
pause
