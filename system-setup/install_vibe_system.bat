@echo off
title Vibe Hub Architecture Upgrade
echo ========================================================
echo   NANG CAP KIEN TRUC VIBE CODING (FUTURE-PROOF)
echo ========================================================
echo.

:: 1. Dang ky bien moi truong (Environment Variable)
echo [1/2] Dang thiet lap bien moi truong %%VIBE_HUB%%...
setx VIBE_HUB "d:\AI - VIBE CODING\vibe-core\global-hub"
echo OK!

:: 2. Khoi tao Git (Version Control) bao ve Hub
echo [2/2] Khoi tao Git de bao ve du lieu...
cd /d "d:\AI - VIBE CODING\vibe-core"
git init
git add .
git commit -m "Init Vibe Hub Future-Proof Architecture"
echo OK!

echo.
echo ========================================================
echo [HOAN TAT] HE THONG DA DUOC NANG CAP!
echo.
echo LUU Y QUAN TRONG:
echo Bien moi truong %%VIBE_HUB%% da duoc tao. 
echo De IDE va AI nhan dien duoc bien nay, ban can:
echo 1. TAT TOAN BO VS Code / Cursor / Terminal dang mo.
echo 2. Mo lai chung.
echo ========================================================
pause
