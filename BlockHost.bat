@echo off
title Blokir Host AutoCAD & Autodesk By Mr exe
echo Menambahkan entri ke file hosts...
echo.

:: Cek apakah dijalankan sebagai Administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Harap jalankan sebagai Administrator!
    pause
    exit
)

:: Lokasi file hosts
set hostfile=%SystemRoot%\System32\drivers\etc\hosts

:: Backup file hosts sebelum mengedit
copy %hostfile% %hostfile%.bak >nul

:: Daftar host yang akan diblokir
(
echo 127.0.0.1 lmlicenses.wip.autodesk.com
echo 127.0.0.1 lm.licenses.adskflex.com
echo 127.0.0.1 geo2.adskhost.net
echo 127.0.0.1 geo3.adskhost.net
echo 127.0.0.1 geo4.adskhost.net
echo 127.0.0.1 geo5.adskhost.net
echo 127.0.0.1 geo6.adskhost.net
echo 127.0.0.1 www.autodesk.com
echo 127.0.0.1 www.adskhost.net
echo 127.0.0.1 www.autodesk.net
echo 127.0.0.1 auth.autodesk.com
echo 127.0.0.1 sp.autodesk.com
echo 127.0.0.1 su.autodesk.com
echo 127.0.0.1 apps.autodesk.com
echo 127.0.0.1 update.autodesk.com
echo 127.0.0.1 feedback.autodesk.com
echo 127.0.0.1 dlm1.autodesk.com
echo 127.0.0.1 dlm2.autodesk.com
echo 127.0.0.1 dlm3.autodesk.com
echo 127.0.0.1 dlm4.autodesk.com
echo 127.0.0.1 dlm5.autodesk.com
echo 127.0.0.1 trial.autodesk.com
echo 127.0.0.1 store.autodesk.com
echo 127.0.0.1 accounts.autodesk.com
echo 127.0.0.1 register.autodesk.com
echo 127.0.0.1 activation.autodesk.com
echo 127.0.0.1 licensing.autodesk.com
echo 127.0.0.1 services.adskservice.com
echo 127.0.0.1 notifications.autodesk.com
echo 127.0.0.1 analytics.autodesk.com
) >> %hostfile%

echo.
echo Selesai! Server Autodesk telah diblokir.
pause
exit
