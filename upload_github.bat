@echo off
title Upload Landing Page Essen Nangka ke GitHub
color 0A
echo ========================================================
echo   AUTO UPLOAD LANDING PAGE ESSEN NANGKA KE GITHUB
echo   Repository: https://github.com/mohteguhh/essen-nangka
echo ========================================================
echo.

cd /d "%~dp0"

echo [1/4] Inisialisasi Branch Git...
git init
git branch -M main

echo.
echo [2/4] Menhubungkan ke Repositori GitHub...
git remote remove origin 2>nul
git remote add origin https://github.com/mohteguhh/essen-nangka.git

echo.
echo [3/4] Menyiapkan dan Meng-commit Semua Berkas...
git add .
git commit -m "Auto Update: Landing Page Essen Nangka Juara" 2>nul

echo.
echo [4/4] Mengunggah (Push) ke GitHub...
git push -u origin main --force

echo.
echo ========================================================
if %errorlevel% equ 0 (
    echo   [SUKSES] Berhasil diunggah ke GitHub!
    echo   Repository: https://github.com/mohteguhh/essen-nangka
) else (
    echo   [INFO] Jika ada kendala, pastikan koneksi internet aktif.
)
echo ========================================================
echo.
pause
