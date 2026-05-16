# ⚡ Vibe-Core
*[ [English](README.md) | [Tiếng Việt](README-vi.md) | 中文 ]*

**一个轻量级、基于文件的上下文管理系统，专为 AI 辅助编程 (Vibe Coding) 设计。**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-lightgrey)]()
[![AI](https://img.shields.io/badge/%E9%80%82%E9%85%8D-Cursor%20%7C%20Aider%20%7C%20Claude%20Code-blue)]()

---

## 这是什么？

Vibe-Core 不是臃肿的框架，也不是复杂的服务器。它是一个基于目录结构的**极简上下文管理哲学**，旨在帮助你自然地掌握 AI 工作流。

我们利用 Markdown 和 Shell 脚本的力量，消除了 AI 编程时代最大的两个摩擦点：

1. **AI 的“健忘症”：** 告别因为关闭标签页或开启新会话而导致 AI 遗忘所有上下文的窘境。
2. **智能体冲突：** 建立一种“共同语言”（共享状态），让不同的 AI 工具（如 Cursor 和 Claude Code）能够相互理解并无缝接手对方的工作。

> **适合谁？** 那些希望专注于创造而非配置的开发者。以及那些同时使用多个 AI 工具，并渴望拥有流畅、透明且 100% 私密的交接流程的人。

---

## 核心特性

- 🚀 **极速脚手架初始化:** 通过一键式 `.bat` 或 `.sh` 脚本，在几秒钟内启动新项目。
- 🤝 **多智能体无缝交接:** 通过标准化的 `STATE.md` 协议，在 IDE 智能体（Cursor, VS Code, Windsurf, Antigravity）与 CLI 智能体（Claude Code、Aider）之间实现完美协作。
- 🧠 **全局知识持久化:** 中央化的 `global-hub` 确保你的编码风格、偏好和长期积累的经验能在每个项目中得到延续。
- 📖 **人类可读的状态管理:** 无数据库，无二进制文件。所有的 AI 记忆都是纯文本 Markdown——完全可审计且对 Git 友好。
- 🛡️ **隐私至上:** 100% 本地优先架构。除非你主动推送，否则项目上下文永远不会离开你的机器。
- 🌐 **国际化支持:** 内置英文、中文和越南语文档支持。

---

## 工作原理

核心思想：**你的文件系统就是共享记忆。**

```
vibe-core/
├── global-hub/          # 跨项目持久记忆（偏好、会话日志）
├── project-scaffold/    # 注入每个新项目的模板
│   └── .planning/
│       └── STATE.md     # 智能体之间的"交接文件"
├── docs/                # 文档 (en / vi / zh)
├── win-vibe-init.bat    # 一键项目初始化 (Windows)
└── mac-vibe-init.sh     # 一键项目初始化 (Mac/Linux)
```

开始新项目时，初始化脚本会将脚手架复制到项目文件夹，并将提示词注入剪贴板。AI 读取 `STATE.md` 来了解上次做了什么，以及接下来需要做什么。

---

## 客观对比

| | AutoGen | Mem0 / Zep | Vibe-Core |
|---|---|---|---|
| **最适合** | 自动化多智能体流水线 | 需要持久用户记忆的生产级 AI 应用 | 个人/小团队 AI 编程工作流 |
| **安装** | Python 3.10+，多种依赖 | API 密钥，服务器或云服务 | 只需文件。无需安装。 |
| **记忆类型** | 代码定义的智能体状态 | 向量数据库 / 知识图谱 | 纯 Markdown 文件 |
| **透明度** | 难以追踪 | 嵌入式黑盒 | 完全人类可读 |
| **适用规模** | 企业级自动化 | 生产级 SaaS | 个人 / 约 5 人团队 |

> **Vibe-Core 不是 Mem0 或 AutoGen 的替代品。** 如果你在构建需要检索增强记忆的生产级 AI 产品，请使用 Mem0 或 Zep。如果需要自动化多智能体流水线，请使用 AutoGen。Vibe-Core 专注于两者之间的空间：*一个正在使用 AI 工具主动编码的开发者，需要共享状态，而不需要复杂的基础设施。*

---

## 快速开始

### 第一步：安装（仅需一次）

**Windows：** 运行 `system-setup\win-install-system.bat`

**Mac/Linux：** 运行 `sh system-setup/mac-install-system.sh`

这将设置指向 `global-hub/` 的 `$VIBE_HUB` 环境变量，以便你的 AI 智能体可以跨项目访问持久记忆。

### 第二步：初始化新项目

将 `win-vibe-init.bat`（或 `mac-vibe-init.sh`）复制到新项目文件夹中并运行。

它将：
- 将脚手架（`.planning/STATE.md`、`CLAUDE_GUIDE.md`）复制到你的项目中
- 自动将初始化提示词复制到剪贴板

将该提示词粘贴到 AI 聊天框即可开始。

### 第三步：多智能体协作

打开 `.planning/STATE.md`。此文件是您的共享任务板。

- 将任务分配给特定的智能体
- 在切换 AI 工具时记录交接笔记
- 任何完成回合的智能体在停止前必须更新此文件

---

## 🛠️ Vibe CLI (高级)

`vibe-core` 现在包含一个命令行工具，让您的工作流程更加顺畅。

### 安装
1. 进入 CLI 目录：`cd vibe-cli`
2. 全局安装：`npm install -g .`（现在您可以在任何地方使用 `vibe` 命令了！）

### 命令
- **`vibe init`**: 自动将脚手架注入到当前项目文件夹中。不再需要手动复制。
- **`vibe compress`**: 当您的 `STATE.md` 变得太长时，运行此命令以总结旧的交接笔记并节省 AI token。

---

## 局限性

- **需要纪律性。** 如果你不更新 `STATE.md`，智能体将失去上下文。系统的效果完全取决于你记录日志的质量。
- **不适合大团队。** 没有同步层的基于文件的状态，超过约 5 名协作者后会变得混乱。
- **没有检索功能。** 上下文是手动加载的，不会被搜索或排名。长期项目需要定期总结。

---

## 文档

- 🇬🇧 [English Docs](docs/en/)
- 🇻🇳 [Tài liệu Tiếng Việt](docs/vi/)
- 🇨🇳 [中文文档](docs/zh/)

---

## 作者

**HUỲNH THÁI CHÂU**
- **GitHub:** [@Thaichausg](https://github.com/Thaichausg)
- **Email:** chatgpt.htc@gmail.com

---

## 许可证

MIT — 随意使用、修改和分享。
