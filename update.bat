@echo off
set URL=
set BIN=%~p0bin

%BIN%\wget -O=update.zip %URL%
pause