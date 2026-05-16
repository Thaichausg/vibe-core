#!/bin/bash
echo "=========================================="
echo "  DANG KHOI TAO HE THONG VIBE CODING..."
echo "=========================================="

# Copy Starter Kit vao thu muc hien tai
cp -R "$VIBE_HUB/../project-scaffold/"* ./ 2>/dev/null || cp -R "$(dirname "$0")/project-scaffold/"* ./

echo ""
# Copy vao Clipboard (dung pbcopy tren Mac)
echo "Hay doc file CLAUDE_GUIDE.md va khoi tao memory cho du an nay. Dung quen lien ket voi AI_KNOWLEDGE_HUB tai: \$VIBE_HUB" | pbcopy

echo "[THANH CONG] Da copy cac file memory!"
echo "[THANH CONG] Da copy Cau Lenh vao Clipboard. Hay sang IDE nhan Cmd+V nhe!"
echo "=========================================="
