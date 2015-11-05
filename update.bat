@echo off
set URL=https://github.com/tumblegamer/tumble-hub/archive/master.zip
set BIN=%~p0bin

%BIN%\wget -O=update.zip %URL%
pause