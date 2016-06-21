@echo off
set MENU=%~dp0menu

set n=0
for /f " delims=/" %%a in ('dir "%MENU%" /a:d /b') do (
  set /a n+=1
  set "file=%%a"
  set "name=%%a.dir"

  if exist "%MENU%\!file!\!file!.ini" (
    for /f "usebackq tokens=1,2 delims==" %%a in ("%MENU%\!file!\!file!.ini") do (
      if %%a==name set name=%%b
      if %%a==description set description=%%b
    )
  )
  echo !n!. !name!
  if defined description (
  "%BIN%\batbox" /c 0x07 /d "   !description!" /c 0x0f
  echo.
  )
  set description=
  set name=
  echo.
)
echo ##############################################
if defined error "%BIN%\batbox" /c 0xcf /d "ERROR: %error%" /c 0x0f
echo.
set n=
set file=
set name=
set description=

set /p i=Choose a number: 
call menu

if not %option%==//error// goto go
if %option%==//error// (
  set restart=1
  echo %i% is not an option!>>error.ini
  set i=
  goto :eof
)

:go
 if exist "%MENU%\!file!\!file!.bat" (
  call %MENU%\!file!\!file!.bat
 )
