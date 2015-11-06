@echo off

set n=0
for /f " delims=/" %%a in ('dir "%MENU%" /a:d /b') do (
  set /a n+=1
  if !n!==!i! set option=%%a
)
set n=
set option=!option!
if defined option set i=
if not defined option set option=//error//