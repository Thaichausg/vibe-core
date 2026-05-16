# ⚡ Vibe-Core
*[ [English](README.md) | [Tiếng Việt](README-vi.md) | 中文 ]*

**一个轻量级、基于文件的上下文管理系统，专为 AI 辅助编程 (Vibe Coding) 设计。**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-lightgrey)]()
[![AI](https://img.shields.io/badge/%E9%80%82%E9%85%8D-Cursor%20%7C%20Aider%20%7C%20Claude%20Code-blue)]()

---

## 这是什么？

Vibe-Core 是一个**基于目录的工作流约定**——不是框架，不是库，也不是服务器。

它使用纯 Markdown 文件和 Shell 脚本来解决日常 AI 编程中两个常见的痛点：

1. **会话间的上下文丢失** — 关闭标签页后，AI 忘记了你正在做什么。
2. **多智能体协调** — 多个 AI 工具（IDE + 终端）同时工作却没有共享状态。

> **适合谁？** 同时使用 1–2 个 AI 编程工具（例如 Cursor + Claude Code）的个人开发者和小团队，他们需要一种简单、透明的方式来管理共享上下文——无需搭建服务器或编写编排代码。

---

## 核心特性

- 🚀 **极速脚手架初始化:** 通过一键式 `.bat` 或 `.sh` 脚本，在几秒钟内启动新项目。
- 🤝 **多智能体无缝交接:** 通过标准化的 `STATE.md` 协议，在 IDE 智能体（Cursor、Windsurf）与 CLI 智能体（Claude Code、Aider）之间实现完美协作。
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

这将设置指向 `global-hub/` 的 `$VIBE_HUB` 环境变量，并初始化本地 Git 仓库以对记忆进行版本控制。

### 第二步：初始化新项目

将 `win-vibe-init.bat`（或 `mac-vibe-init.sh`）复制到新项目文件夹中并运行。

它将：
- 将脚手架（`.planning/STATE.md`、`CLAUDE_GUIDE.md`）复制到你的项目中
- 自动将初始化提示词复制到剪贴板

将该提示词粘贴到 AI 聊天框即可开始。

### 第三步：与多个智能体协作

打开 `.planning/STATE.md`。这是你的共享任务板。

- 为特定智能体分配任务
- 在 AI 工具之间切换时记录交接说明
- 任何完成一轮工作的智能体在停止前必须更新此文件

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
