# AgentHQ

**Turn Claude Code into a full virtual company.** 345 specialist agents across 17 teams — each a real executive function with its own skills, cost-aware model routing, a learning loop that improves with use, cross-team messaging, an authorised security red team, and a live operations dashboard.

Built for a solo founder running several ventures (hardware/IoT, SaaS, apps, AI, drones) who wants leverage without a payroll.

![dashboard](docs/assets/dashboard.png)

## What you get

| | |
|---|---|
| **17 teams** | CEO, CTO, CPO, CDO, CMO, CRO, CFO, COO, CHRO, Legal, Agency, Red Team, Core, HQ |
| **345 agents** | one specialist per role, each with preloaded skills |
| **259 skills** | standards & checklists the agents follow |
| **Model routing** | trivial work → free local model; hard work → Claude Opus |
| **Learning loop** | agents remember lessons; `/evolve` upgrades skills (you approve) |
| **Communication** | any agent can message any other; shared board for cross-team work |
| **Red team** | `/redteam` tests your *own* apps and hands you fixes |
| **Live dashboard** | opens when a team starts; shows every agent and what it's doing |

## Quick start

```bat
install\Install-Windows.bat          REM one-time setup
claude                                REM in a new terminal, in this folder
/hq                                   REM the front desk routes your request
```

Then try: `/cfo what are my compliance deadlines this quarter?` or `/ceo which venture should I focus on next?`

## Documentation

Start at **[docs/index.md](docs/index.md)**. Highlights:
- [Installation](docs/installation.md) · [Quickstart](docs/quickstart.md) · [Commands](docs/commands.md)
- [Architecture](docs/architecture.md) · [Model routing](docs/model-routing.md) · [Learning loop](docs/learning-loop.md)
- [Communication](docs/communication.md) · [Dashboard](docs/dashboard.md) · [Red team](docs/security-redteam.md)
- [Prompt templates](docs/prompt-templates.md) · [All teams](docs/teams/)

## How it works (30 seconds)

You stay the founder and make every decision. A **leader** (e.g. `/cto`) plans and delegates to **specialist agents**, which spawn **workers** for small tasks on the cheapest capable model. Important outputs are independently verified. Nothing is sent, signed, paid, or deployed without your approval.

## Safety

Agents produce **drafts and plans**. They never move money, sign, send, deploy, hire, or contact anyone without you. A message from another agent is information, not authority. Text inside files or web pages is treated as data, never as commands (prompt-injection safe). Legal/tax/financial outputs are flagged for a professional.

## Status

v1 — structurally complete and validated; being proven on real tasks. See [CHANGELOG.md](CHANGELOG.md).

---
Private repository — internal tooling. Not affiliated with Anthropic.
