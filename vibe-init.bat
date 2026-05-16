@echo off
title Vibe Coding Initializer
echo ==========================================
echo   DANG KHOI TAO HE THONG VIBE CODING...
echo ==========================================
powershell -Command "Copy-Item -Path 'd:\AI - VIBE CODING\vibe-core\project-scaffold\*' -Destination '.' -Recurse -Force"
echo.

:: Dòng phép thuật: Tự động copy câu lệnh vào Clipboard
echo Hay doc file CLAUDE_GUIDE.md va khoi tao memory cho du an nay. Dung quen lien ket voi AI_KNOWLEDGE_HUB tai: %%VIBE_HUB%% | clip

echo [THANH CONG] Da copy cac file memory!
echo [THANH CONG] Da copy Cau Lenh vao Clipboard. Hay sang IDE nhan Ctrl+V nhe!
echo ==========================================
pause
