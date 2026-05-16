# ⚡ 快速设置：启动新项目

> 当你创建了一个空项目文件夹并想注入 AI 记忆脚手架时，请使用此文件。

---

## 第一步：注入脚手架

### 方法 A：自动运行脚本（最快）
1. 将 **`win-vibe-init.bat`** (Windows) 或 **`mac-vibe-init.sh`** (Mac/Linux) 复制到项目文件夹。
2. 运行该脚本。

### 方法 B：终端命令
```bash
cp -r "$VIBE_HUB/../project-scaffold/*" .
```

---

## 第二步：激活 AI

初始化提示词已**自动复制到你的剪贴板**。

在 AI 聊天框中按下 `Ctrl+V`（或 `Cmd+V`）并回车。

AI 将读取 `CLAUDE_GUIDE.md` 以了解项目记忆结构，并链接到中央 `global-hub`。

---

## 会注入什么？

```
your-project/
├── .planning/
│   └── STATE.md     # 所有智能体共享的任务板
└── CLAUDE_GUIDE.md  # AI 如何使用记忆系统的说明
```

**就这些。** 没有多余的文件，没有隐藏配置。

---

**下一步：** 打开 `01_QUICK_WORKFLOW.md` 了解如何协调多个 AI 智能体。
