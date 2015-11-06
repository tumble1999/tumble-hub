@echo off
set URL=https://github.com/tumblegamer/tumble-hub/archive/master.zip

%BIN%\wget --no-check-certificate -Oupdate.zip %URL%
set URL=
%BIN%\unzip -uo update
del update.zip
move /y %~p0tumble-hub-master\* %~p0
rmdir /S /Q tumble-hub-master 