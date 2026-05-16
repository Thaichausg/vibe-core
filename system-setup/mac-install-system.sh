#!/bin/bash
echo "========================================================"
echo "  INSTALLING VIBE CODING SYSTEM (MAC/LINUX)"
echo "========================================================"
echo ""

# Get absolute path of vibe-core
VIBE_BASE_PATH=$(pwd)
HUB_PATH="$VIBE_BASE_PATH/global-hub"

echo "[1/2] Setting up \$VIBE_HUB environment variable..."

# Determine shell config file
if [[ "$SHELL" == *"zsh"* ]]; then
    RC_FILE="$HOME/.zshrc"
else
    RC_FILE="$HOME/.bash_profile"
fi

# Append environment variable
echo "" >> "$RC_FILE"
echo "# Vibe Coding Knowledge Hub" >> "$RC_FILE"
echo "export VIBE_HUB=\"$HUB_PATH\"" >> "$RC_FILE"

echo "Saved \$VIBE_HUB to $RC_FILE"
echo "OK!"

echo "[2/2] Initializing Git to protect your data..."
git init
git add .
git commit -m "Init Vibe Hub Architecture on Mac/Linux"
echo "OK!"

echo ""
echo "========================================================"
echo "[SUCCESS] UPGRADE COMPLETED FOR MAC/LINUX!"
echo "To make your IDE recognize this variable, you must:"
echo "1. Run command: source $RC_FILE"
echo "2. Or completely restart VS Code / Cursor / Antigravity."
echo "========================================================"
