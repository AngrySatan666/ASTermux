@echo off
REM =========================================
REM run.bat –– launch elevated cmd in this folder
REM =========================================

:: 1. Grab the directory this script lives in
set "TARGET_DIR=%~dp0"

:: 2. Use PowerShell to launch cmd.exe as Administrator
::    with the initial working directory set to %TARGET_DIR%
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Start-Process cmd.exe -ArgumentList '/k cd /d \"%TARGET_DIR%\"' -Verb RunAs"

exit /b
