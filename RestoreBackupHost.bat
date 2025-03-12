@echo off
title Pulihkan File Hosts
echo Memulihkan file hosts dari backup...
copy /y %SystemRoot%\System32\drivers\etc\hosts.bak %SystemRoot%\System32\drivers\etc\hosts
echo Selesai!
pause
exit
