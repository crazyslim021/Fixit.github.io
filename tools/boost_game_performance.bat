@echo off
title Ultimate Performance Boost
color 0C

echo ================================
echo  BOOSTING SYSTEM PERFORMANCE
echo ================================
echo.

:: Set High Performance Power Plan
echo Setting High Performance Power Plan...
powercfg -setactive SCHEME_MIN

:: Clean temporary files
echo Cleaning temp files...
del /s /f /q %temp%\*
del /s /f /q C:\Windows\Temp\*
del /s /f /q C:\Windows\Prefetch\*
echo Temp files cleaned.

:: Flush DNS cache
echo Flushing DNS...
ipconfig /flushdns

:: Stop unnecessary background services
echo Stopping unnecessary services...
sc stop "DiagTrack" >nul 2>&1
sc stop "SysMain" >nul 2>&1
sc stop "WSearch" >nul 2>&1
sc stop "XboxGipSvc" >nul 2>&1
sc stop "XblAuthManager" >nul 2>&1
sc stop "XblGameSave" >nul 2>&1
sc stop "XboxNetApiSvc" >nul 2>&1

:: Disable Windows telemetry (safe version)
echo Disabling telemetry services...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul

:: Kill background tasks
echo Killing background tasks...
taskkill /f /im OneDrive.exe >nul 2>&1
taskkill /f /im Cortana.exe >nul 2>&1
taskkill /f /im SearchUI.exe >nul 2>&1
taskkill /f /im RuntimeBroker.exe >nul 2>&1

:: Optional: Free up standby memory using RAMMap tool (manual step)

echo.
echo Performance boost applied! Restart your PC for best results.
pause
