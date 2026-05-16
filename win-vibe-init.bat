@echo off
title Vibe Coding Initializer
echo ==========================================
echo   INITIALIZING VIBE CODING SYSTEM...
echo ==========================================
if "%VIBE_HUB%"=="" (
    echo [ERROR] VIBE_HUB environment variable is not set!
    echo Please run system-setup\win-install-system.bat first.
    echo Then RESTART your terminal/IDE and try again.
    echo ==========================================
    pause
    exit /b 1
)

powershell -Command "Copy-Item -Path \"$env:VIBE_HUB\..\project-scaffold\*\" -Destination '.' -Recurse -Force"
echo.

:: Auto-copy prompt to Clipboard
echo Please read CLAUDE_GUIDE.md and initialize memory for this project. Connect to AI_KNOWLEDGE_HUB at: %%VIBE_HUB%% | clip

echo [SUCCESS] Memory files injected!
echo [SUCCESS] Prompt copied to Clipboard. Go to your IDE and press Ctrl+V!
echo ==========================================
pause
