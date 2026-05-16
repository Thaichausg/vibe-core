# 🧠 System Overview

This document explains the two core components of Vibe-Core and why they exist.

---

## Component 1: `global-hub/` — Cross-project memory

**What it is:** A single directory that lives outside any specific project, pointed to by the `$VIBE_HUB` environment variable.

**What it stores:**
- `GLOBAL_PREFERENCES.md` — Your personal coding preferences, design conventions, and rules that apply across all projects. AI reads this to understand how you like to work.
- `SESSION_LOGS/` — Daily log files. At the end of a session, you ask the AI to write a summary here. These become context for future sessions.

**Key design decision:** There is only ever ONE `global-hub`. It never gets copied into projects. All projects reference it by absolute path via `$VIBE_HUB`. This is how knowledge accumulates across projects over time.

---

## Component 2: `project-scaffold/` — Per-project state

**What it is:** A template that gets copied into every new project when you run the init script.

**What it contains:**
- `.planning/STATE.md` — The shared task board. This is where agents log what they did and what needs to happen next. It's the only required convention — the rest of the system depends on this file being maintained.
- `CLAUDE_GUIDE.md` — Instructions for the AI on startup: read this file, link to `$VIBE_HUB`, and understand the project memory structure.

---

## Why this works (and when it doesn't)

**Works well when:**
- You use 1–2 AI tools and switch between them regularly
- You want to resume a project after days or weeks without re-explaining everything
- You want your AI preferences to carry over from project to project

**Breaks down when:**
- Team members don't update `STATE.md` consistently (the system is only as good as the logs)
- Projects become very large with many parallel workstreams (flat file state gets messy)
- You need AI to actively search through past context (Vibe-Core doesn't do retrieval — you load context manually)
