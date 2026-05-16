# 🌍 Global Preferences

> Contains immutable rules for interactions between the User and the AI across all projects.

## 1. Language & Communication
- **Primary Language:** English (or your preferred language).
- **Style:** Professional, concise, solution-focused.
- **Format:** Use Markdown, and Mermaid diagrams for complex logic.

## 2. Coding Standards
- **Quality:** Clean code, with comments explaining complex logic.
- **Aesthetics (Web):** Use modern UI standards (Premium, Dynamic animations). Avoid basic colors (pure red/blue).
- **Safety:** NEVER save secrets/tokens into files. Always ask before executing destructive commands.

## 3. Memory Management
- Value updating memory over writing long explanations in chat.
- When the User says "Continue", the AI must automatically find and read `SESSION_LOGS/latest.md`.
