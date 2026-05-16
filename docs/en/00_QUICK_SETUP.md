# ⚡ QUICK SETUP: Start a New Project

> Use this file when you have created an empty project folder and want to inject AI memory scaffolding.

---

## Step 1: Inject the Scaffold

### Method A: Auto-run Script (Fastest)
1. Copy **`win-vibe-init.bat`** (Windows) or **`mac-vibe-init.sh`** (Mac/Linux) into your project folder.
2. Run it.

### Method B: Terminal Command
```bash
cp -r "$VIBE_HUB/../project-scaffold/*" .
```

---

## Step 2: Activate AI

The initialization prompt has been **auto-copied to your clipboard**.

Press `Ctrl+V` (or `Cmd+V`) into your AI chat and hit Enter.

The AI will read `CLAUDE_GUIDE.md` to understand the project memory structure and link to the central `global-hub`.

---

## What gets injected?

```
your-project/
├── .planning/
│   └── STATE.md     # Shared task board for all agents
└── CLAUDE_GUIDE.md  # Instructions for the AI on how to use the memory system
```

**That's it.** No extra files, no hidden config.

---

**Next:** Open `01_QUICK_WORKFLOW.md` to learn how to coordinate multiple AI agents.
