@echo off
title Disable High Impact Startup Apps
color 0E

echo =======================================
echo  DISABLING COMMON HIGH IMPACT STARTUPS
echo =======================================
echo.

:: Disable OneDrive
echo Disabling OneDrive from startup...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDrive /f >nul 2>&1
taskkill /f /im OneDrive.exe >nul 2>&1

:: Disable Skype
echo Disabling Skype from startup...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Skype /f >nul 2>&1
taskkill /f /im Skype.exe >nul 2>&1

:: Disable Microsoft Teams
echo Disabling Teams from startup...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v com.squirrel.Teams.Teams /f >nul 2>&1
taskkill /f /im Teams.exe >nul 2>&1

:: Disable Adobe Updater
echo Disabling Adobe Updater...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v AdobeAAMUpdater-1.0 /f >nul 2>&1
taskkill /f /im AdobeUpdater.exe >nul 2>&1

:: Disable Spotify
echo Disabling Spotify...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Spotify /f >nul 2>&1
taskkill /f /im Spotify.exe >nul 2>&1

:: Optional: Disable Edge auto-launch on startup
echo Disabling Microsoft Edge auto-launch...
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v PreventFirstRunPage /t REG_DWORD /d 1 /f >nul

echo.
echo Done! You can check Task Manager > Startup tab for results.
pause
