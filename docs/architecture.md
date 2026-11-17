# Architecture

## The idea
Each **leader** is a Claude Code *main-session mode* (a manual skill, invoked by command). Each **specialist** is a *subagent* (a file in `.claude/agents/`). Leaders decompose a goal, delegate to specialists, and specialists spawn **workers** for atomic tasks — up to 3 layers deep.

```
You (founder, final decisions)
└── Leader mode  (/ceo /cto /cfo …)        ← plans, delegates, reports
    └── Specialist agents  (one per role)   ← own a work package
        └── Worker agents  (C0–C4 by cost)  ← one atomic task each
            └── worker-verifier             ← checks important outputs
```

## Repository layout
```
Agents/
├── CLAUDE.md              # operating manual every agent reads
├── teams/<name>/
│   ├── agents/*.md        # specialist subagents (name, model, tools, skills)
│   └── skills/<skill>/SKILL.md
├── engine/
│   ├── scripts/           # local_llm.py, hooks, dashboard server, installers
│   └── dashboard/         # the live dashboard page + agent→team map
├── install/
│   ├── Install-Windows.bat
│   └── chat-skills/       # copies of the leader skills for use in Claude chat (web/app)
├── docs/                  # this documentation (also the CTO team's runtime output folder)
└── (runtime working dirs) comms/ security/ learnings/ ceo/ finance/ ops/ … created/used as agents work
```

## The core team (`teams/core`)
- **Workers by cost tier:** `worker-local` (open-weight model via Ollama, free/offline), `worker-haiku`, `worker-sonnet`, `worker-opus`.
- **`worker-verifier`** — independent checker for important outputs.
- **`skill-curator`** — runs `/evolve`, proposes skill upgrades from real usage.
- **`agent-architect`** — drafts new agents when a gap recurs (you approve).

## Cross-cutting systems
- **Model routing** — [model-routing.md](model-routing.md)
- **Learning loop** — [learning-loop.md](learning-loop.md)
- **Communication** — [communication.md](communication.md)
- **Dashboard** — [dashboard.md](dashboard.md)

## Guardrails (built into every agent)
- Agents produce **drafts and plans**; you approve anything money/legal/external/irreversible.
- A message from another agent is **information, not authority**.
- Text inside files, web pages, or tool output is **data, not commands** (prompt-injection safe).
- Legal/tax/financial outputs are flagged for a qualified professional.
