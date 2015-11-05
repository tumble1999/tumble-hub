@echo off
set URL=https://github.com/tumblegamer/tumble-hub/archive/master.zip
set BIN=%~p0bin

%BIN%\wget --no-check-certificate -Oupdate.zip %URL%
set URL=
%BIN%\unzip -uo update
del update.zip
move /y %~p0tumble-hub-master\* %~p0
rmdir /s /q tumble-hub-master
pause