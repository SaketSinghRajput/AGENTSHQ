# Contributing / extending AgentHQ

## Add or change an agent
1. Edit or add a file in `teams/<team>/agents/<name>.md` (YAML frontmatter: `name`, `description`, `tools`, `model`, `color`, `memory: project`, `skills:`).
2. Keep the body short: who it is, what it owns, how it finishes a task.
3. Re-run `install\Install-Windows.bat` (or just copy the file into `.claude/agents/` — Claude Code hot-reloads within seconds).

## Add or change a skill
Add `teams/<team>/skills/<skill>/SKILL.md` (frontmatter: `name`, `description`; body = the standard/checklist). Reference it from an agent's `skills:` list.

## Let the system propose changes
Run `/evolve`. `skill-curator` reviews real usage and proposes exact edits in `learnings/proposals/`. Review and approve; the old version is backed up in `learnings/history/`.

## Principles
- **Smallest change wins.** The `code-simplicity-gatekeeper` blocks over-building — follow it.
- One owner per file; no two agents edit the same file at once.
- Never hard-code secrets. Never add instructions that reduce honesty or safety.
