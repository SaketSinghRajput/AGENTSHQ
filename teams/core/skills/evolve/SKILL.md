---
name: evolve
description: "Run the skill-evolution cycle: review agent memories, retros and usage, propose skill/agent improvements, and apply the ones Saket approves. Invoke with /evolve."
disable-model-invocation: true
---

# /evolve — improve the agent company

1. Spawn `skill-curator` to read: `learnings/usage-log.csv` (most-used agents first), `.claude/agent-memory/*/MEMORY.md`, `learnings/*/LOG.md`.
2. It writes `learnings/proposals/<date>.md`: for each proposal — target file, why (evidence), exact diff, risk.
3. Show Saket a numbered summary; apply only the items he approves. Before editing, copy the old file to `learnings/history/<date>/`.
4. Optional: `agent-architect` proposals for new agents (from repeated gaps) — create only approved ones.
5. Log what changed in `learnings/CHANGELOG.md`.
If $ARGUMENTS names a team or agent, focus on that.
