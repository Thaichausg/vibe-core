# 🧠 AI KNOWLEDGE HUB — THE SECOND BRAIN

> This file is the central control hub for the AI's memory. At the start of a new session, the AI **MUST** read this file first to grasp the entire global context.

## 1. Quick Access
- **Global Rules:** [GLOBAL_PREFERENCES.md](./GLOBAL_PREFERENCES.md)
- **Project States:** [PROJECT_SNAPSHOTS.md](./PROJECT_SNAPSHOTS.md)
- **Latest Logs:** [SESSION_LOGS/latest.md](./SESSION_LOGS/latest.md)

## 2. Memory Map
| Directory | Content | When AI should read it |
|---|---|---|
| `KNOWLEDGE_BASE/` | Tech stacks, snippets, libraries | When doing specific technical tasks |
| `WORKFLOWS/` | Setup, deploy, debug procedures | When performing system operations |
| `SESSION_LOGS/` | Daily/Session work logs | When resuming a session |
| `DECISIONS/` | Architectural decisions | During disputes or major changes |

## 3. How AI Updates Memory
- After every major session, the AI must summarize it into `SESSION_LOGS/`.
- If there is a new rule from the User, update `GLOBAL_PREFERENCES.md` immediately.
- If a tech decision is made, update the `KNOWLEDGE_BASE/`.
