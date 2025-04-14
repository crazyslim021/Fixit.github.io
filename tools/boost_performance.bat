@echo off
title System Performance Booster
color 0A
echo.
echo Boosting system performance...
echo.

:: Clear temp folders
echo Cleaning temporary files...
del /s /q %temp%\*
del /s /q C:\Windows\Temp\*
echo Temp files cleaned.

:: Clear DNS cache
echo Flushing DNS cache...
ipconfig /flushdns

:: Stop unwanted services (example: Xbox services)
echo Stopping unnecessary services...
sc stop "XboxGipSvc"
sc stop "XblAuthManager"
sc stop "XblGameSave"
sc stop "XboxNetApiSvc"

:: Free up standby memory (requires RamMap or similar tool if needed)

:: End background processes (example: OneDrive, Cortana)
echo Stopping some background processes...
taskkill /f /im OneDrive.exe
taskkill /f /im SearchUI.exe

echo.
echo Done! You may want to restart for full effect.
pause
