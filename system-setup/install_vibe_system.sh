#!/bin/bash
echo "========================================================"
echo "  NANG CAP KIEN TRUC VIBE CODING (MAC/LINUX)"
echo "========================================================"
echo ""

# Lấy đường dẫn thư mục hiện tại làm gốc
VIBE_BASE_PATH=$(pwd)
HUB_PATH="$VIBE_BASE_PATH/global-hub"

echo "[1/2] Dang thiet lap bien moi truong \$VIBE_HUB..."

# Xác định file cấu hình shell
if [[ "$SHELL" == *"zsh"* ]]; then
    RC_FILE="$HOME/.zshrc"
else
    RC_FILE="$HOME/.bash_profile"
fi

# Thêm biến môi trường vào file cấu hình
echo "" >> "$RC_FILE"
echo "# Vibe Coding Knowledge Hub" >> "$RC_FILE"
echo "export VIBE_HUB=\"$HUB_PATH\"" >> "$RC_FILE"

echo "Da luu bien \$VIBE_HUB vao $RC_FILE"
echo "OK!"

echo "[2/2] Khoi tao Git..."
git init
git add .
git commit -m "Init Vibe Hub Architecture on Mac/Linux"
echo "OK!"

echo ""
echo "========================================================"
echo "[HOAN TAT] NANG CAP THANH CONG CHO MAC/LINUX!"
echo "De IDE nhan dien bien nay, ban can:"
echo "1. Chay lenh: source $RC_FILE"
echo "2. Hoac khoi dong lai VS Code / Cursor."
echo "========================================================"
