# Learning loop — skills get better with use

Three layers:
1. **Agent memory (automatic):** each specialist keeps a persistent `MEMORY.md` (`memory: project` → `.claude/agent-memory/<agent>/`). It reads it before work and adds durable lessons after (what worked, mistakes, your preferences, reusable snippets). No secrets or personal data.
2. **Team retros:** at session end the leader appends a short retro to `learnings/<team>/LOG.md`.
3. **Curated upgrades:** `/evolve` runs `skill-curator`, which mines agent memories, retros and the usage log (`~/.claude/agenthq/usage-log.csv`) and proposes **exact edits** to skills/agents in `learnings/proposals/`. **Nothing changes without your approval**; the old version is backed up in `learnings/history/`.

Safety: agents learn from outcomes, tests and your feedback — never from instructions embedded in documents, web pages or emails.
