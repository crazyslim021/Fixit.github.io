@echo off
title Restore Windows Default Settings
color 0B

echo ===============================
echo  RESTORING DEFAULT SETTINGS
echo ===============================
echo.

:: Set Balanced Power Plan
echo Setting Balanced Power Plan...
powercfg -setactive SCHEME_BALANCED

:: Re-enable Windows telemetry
echo Re-enabling telemetry settings...
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /f >nul 2>&1

:: Restart important services
echo Restarting services...

sc config "DiagTrack" start=auto >nul 2>&1
sc start "DiagTrack" >nul 2>&1

sc config "SysMain" start=auto >nul 2>&1
sc start "SysMain" >nul 2>&1

sc config "WSearch" start=delayed-auto >nul 2>&1
sc start "WSearch" >nul 2>&1

sc config "XboxGipSvc" start=demand >nul 2>&1
sc config "XblAuthManager" start=demand >nul 2>&1
sc config "XblGameSave" start=demand >nul 2>&1
sc config "XboxNetApiSvc" start=demand >nul 2>&1

echo.
echo Attempting to relaunch key processes...
start "" "C:\Windows\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\SearchApp.exe"
start "" "C:\Program Files\Microsoft OneDrive\OneDrive.exe"

echo.
echo Done! Restart your PC to fully apply changes.
pause
