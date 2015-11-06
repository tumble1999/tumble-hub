@echo off

color 0f
Setlocal EnableDelayedExpansion
cd %~dp0
set BIN=%~dp0bin

call update
:restart
set restart=
cls
call main
if not defined restart goto bye
if %restart%==1 (
  set /p error=<error.ini
  del error.ini
  goto restart
)
:bye
echo Bye bye...
pause>nul