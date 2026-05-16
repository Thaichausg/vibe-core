# 🔄 QUICK WORKFLOW: Working with AI Agents

> A reference for coordinating multiple AI tools in a single project.

---

## The core idea

Every agent reads `STATE.md` before starting work. Every agent updates it before stopping. That's the whole system.

---

## Daily workflow

### Starting a session
Tell your AI:
> *"Read `.planning/STATE.md` and continue from where we left off."*

### During work (with 2 agents)

**[Agent 1] — Design / UI / Frontend**
- Responsible for: UI structure, CSS, layout, component design.
- Before pausing, log into `STATE.md`:
  > *"Built login form UI. Need Agent 2 to wire up the auth API."*

**[Agent 2] — Logic / API / Backend**
- Responsible for: functions, data processing, API integration.
- Before pausing, log into `STATE.md`:
  > *"Auth API done. Agent 1 can now connect the form."*

### If an agent runs out of quota
Tell the remaining agent:
> *"Your partner is out of quota. Read `STATE.md` and take over their tasks for now."*

---

## Ending a session

Before closing, tell your AI:
> *"Summarize what we did today into `$VIBE_HUB/SESSION_LOGS/latest.md` so we can resume next time."*

---

## Tips

- Always start by telling the AI to read `STATE.md`. This is the most important habit.
- Keep task descriptions in `STATE.md` short and specific — vague handoff notes cause context confusion.
- If the project gets complex, break `STATE.md` into phases and archive old phases into a `STATE-archive.md`.
