#!/bin/bash
echo "=========================================="
echo "  INITIALIZING VIBE CODING SYSTEM..."
echo "=========================================="

# Copy Starter Kit to current dir
cp -R "$VIBE_HUB/../project-scaffold/"* ./ 2>/dev/null || cp -R "$(dirname "$0")/project-scaffold/"* ./

echo ""
# Copy prompt to Clipboard (Mac)
echo "Please read CLAUDE_GUIDE.md and initialize memory for this project. Connect to AI_KNOWLEDGE_HUB at: \$VIBE_HUB" | pbcopy

echo "[SUCCESS] Memory files injected!"
echo "[SUCCESS] Prompt copied to Clipboard. Go to your IDE and press Cmd+V!"
echo "=========================================="
