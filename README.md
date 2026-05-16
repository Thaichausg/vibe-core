# ⚡ Vibe-Core
*[ English | [Tiếng Việt](README-vi.md) | [中文](README-zh.md) ]*

**A lightweight, file-based context management system for AI-assisted coding (Vibe Coding).**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-lightgrey)]()
[![AI](https://img.shields.io/badge/Works%20With-Cursor%20%7C%20Aider%20%7C%20Claude%20Code-blue)]()

---

## What is this?

Vibe-Core is not a bloated framework or a complex server. It is a **minimalist context management philosophy** built on directory structures, designed to help you master AI workflows naturally.

We leverage the power of Markdown and Shell Scripts to eliminate the two biggest friction points in the AI Coding era:

1. **"Context Amnesia":** No more starting from scratch because your AI forgot everything after a tab closure or a new session.
2. **Agent Friction:** Establish a "shared language" (shared state) so different AI tools (like Cursor and Claude Code) can understand and pick up where the other left off.

> **Who is this for?** Developers who want to focus on creation instead of configuration. Those using multiple AI tools simultaneously who crave a smooth, transparent, and 100% private handoff process.

---

## Key Features

- 🚀 **Zero-Overhead Scaffolding:** Initialize new projects in seconds with one-click `.bat` or `.sh` scripts.
- 🤝 **Multi-Agent Handoff:** Standardized protocol (`STATE.md`) for seamless coordination between IDE Agents (Cursor, VS Code, Windsurf, Antigravity) and CLI Agents (Claude Code, Aider).
- 🧠 **Global Knowledge Persistence:** A centralized `global-hub` ensures your coding style, preferences, and long-term insights follow you across every project.
- 📖 **Human-Readable State:** No databases, no binary files. Your entire AI memory is plain-text Markdown — fully auditable and version-control friendly.
- 🛡️ **Privacy First:** 100% local-first architecture. Your project context never leaves your machine unless you push it.
- 🌐 **International Ready:** Built-in support for English, Vietnamese, and Chinese documentation.

---

## How it works

The core idea: **your file system is the shared memory.**

```
vibe-core/
├── global-hub/          # Persistent, cross-project memory (preferences, session logs)
├── project-scaffold/    # Template injected into every new project
│   └── .planning/
│       └── STATE.md     # The "handoff file" between agents
├── docs/                # Documentation (en / vi / zh)
├── win-vibe-init.bat    # One-click project setup (Windows)
└── mac-vibe-init.sh     # One-click project setup (Mac/Linux)
```

When you start a new project, the init script copies the scaffold into your project folder and injects a prompt into your clipboard. Your AI reads `STATE.md` to know what was done last and what needs to happen next.

---

## Honest comparison

| | AutoGen | Mem0 / Zep | Vibe-Core |
|---|---|---|---|
| **Best for** | Automated multi-agent pipelines | Production AI apps needing persistent user memory | Individual dev / small team AI coding workflow |
| **Setup** | Python 3.10+, dependencies | API key, server or cloud | Just files. No install. |
| **Memory type** | Code-defined agent state | Vector DB / Knowledge Graph | Plain Markdown files |
| **Transparency** | Hard to trace | Blackbox embeddings | Fully human-readable |
| **Scales to** | Enterprise automation | Production SaaS | Personal / team of ~5 |

> **Vibe-Core is not a replacement for Mem0 or AutoGen.** If you're building a production AI product that needs retrieval-augmented memory, use Mem0 or Zep. If you need automated multi-agent pipelines, use AutoGen. Vibe-Core is for the space in between: *a developer actively coding with AI tools who needs shared state, not infrastructure.*

---

## Quick Start

### Step 1: Install (one time only)

**Windows:** Run `system-setup\win-install-system.bat`

**Mac/Linux:** Run `sh system-setup/mac-install-system.sh`

This sets up the `$VIBE_HUB` environment variable pointing to `global-hub/` so your AI agents can access persistent memory across all projects.

### Step 2: Start a new project

Copy `win-vibe-init.bat` (or `mac-vibe-init.sh`) into your new project folder and run it.

It will:
- Copy the scaffold (`.planning/STATE.md`, `CLAUDE_GUIDE.md`) into your project
- Auto-copy an initialization prompt to your clipboard

Paste that prompt into your AI chat to begin.

### Step 3: Work with agents

Open `.planning/STATE.md`. This file is your shared task board.

- Assign tasks to specific agents
- Log handoff notes when switching between AI tools
- Any agent that finishes a turn updates this file before stopping

---

## Limitations

- **Requires discipline.** If you don't update `STATE.md`, agents lose context. The system is only as good as the logs you write.
- **Not for large teams.** File-based state without a sync layer gets messy beyond ~5 collaborators.
- **No retrieval.** Context is loaded manually, not searched or ranked. Long-running projects will need periodic summarization.

---

## Documentation

- 🇬🇧 [English Docs](docs/en/)
- 🇻🇳 [Tài liệu Tiếng Việt](docs/vi/)
- 🇨🇳 [中文文档](docs/zh/)

---

## Author

**HUỲNH THÁI CHÂU**
- **GitHub:** [@Thaichausg](https://github.com/Thaichausg)
- **Email:** chatgpt.htc@gmail.com

---

## License

MIT — use it, adapt it, share it.
