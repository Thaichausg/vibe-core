# AI Collaboration Guide

> **Read this first.** This file tells you (the AI) how to work within the Vibe-Core memory system.

---

## 1. Your Role

This project uses a multi-agent workflow. There may be multiple AI tools working on this codebase (e.g., an IDE agent like Cursor, and a CLI agent like Claude Code or Aider).

**Default role split:**
- **[Agent 1] — IDE Agent** (e.g., Cursor, Windsurf): Leads UI/UX design, component structure, and architecture decisions.
- **[Agent 2] — CLI Agent** (e.g., Claude Code, Aider): Leads backend logic, API integration, and complex data processing.

**Golden rule:** Either agent can cover the other's role if needed. If your partner runs out of quota, take over their tasks without waiting.

> You are free to rename Agent 1 / Agent 2 to match the actual tools being used in this project.

---

## 2. Startup Sequence (Do this every time)

When the user activates you, follow this order:

1. **Read** `.planning/STATE.md` — understand what was done last and what you need to do next.
2. **Read** the relevant source files mentioned in STATE.md — don't assume, read the actual code.
3. **Do the work** — complete the assigned task without making unnecessary changes outside your scope.
4. **Update** `.planning/STATE.md` before stopping — log what you did and what the next agent should do.

---

## 3. Strict Rules

- **Never** delete or overwrite another agent's work without being explicitly asked.
- **Never** guess at requirements. If `STATE.md` is unclear, ask the user.
- **Always** update `STATE.md` before ending your turn. A blank handoff note breaks the workflow.
- **Always** link to the global memory hub at: `$VIBE_HUB` (or the path set in your environment).

---

## 4. Global Memory

This project connects to a shared knowledge hub. Before starting, check if there are relevant preferences or past decisions stored at:

```
$VIBE_HUB/GLOBAL_PREFERENCES.md
$VIBE_HUB/SESSION_LOGS/
```

Apply any relevant global preferences to your work in this project.
