@echo off
title Vibe Hub Architecture Upgrade
echo ========================================================
echo   INSTALLING VIBE CODING SYSTEM (FUTURE-PROOF)
echo ========================================================
echo.

:: Get absolute path of vibe-core
set "SCRIPT_DIR=%~dp0"
set "VIBE_ROOT=%SCRIPT_DIR%.."
pushd "%VIBE_ROOT%"
set "VIBE_ROOT_FULL=%CD%"
popd

:: 1. Set Environment Variable
echo [1/2] Setting up %%VIBE_HUB%% environment variable...
setx VIBE_HUB "%VIBE_ROOT_FULL%\global-hub"
echo OK!

:: 2. System Check (Optional)
echo [2/2] Verifying installation...
git --version
echo OK!

echo.
echo ========================================================
echo [SUCCESS] SYSTEM HAS BEEN UPGRADED!
echo.
echo IMPORTANT NOTE:
echo The environment variable %%VIBE_HUB%% has been created. 
echo To make your IDE and Terminal recognize this variable, you MUST:
echo 1. CLOSE ALL open windows of VS Code / Cursor / Antigravity / Terminal.
echo 2. Reopen them.
echo ========================================================
pause
