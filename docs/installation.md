# Installation (Windows)

## Prerequisites
- **Claude Code** installed and signed in (`claude --version` should print a version).
- **Python 3** on PATH (used by the dashboard, hooks and local-model bridge).
- Optional: **Ollama** running, with a tools-capable model pulled (`ollama pull qwen3.5`) for the free local-model worker.

## Install
From this repo folder:

```bat
install\Install-Windows.bat
```

This:
1. Copies all teams' agents and skills into both the **project** `.claude\` (this repo) and your **user** `~/.claude\` (so commands work everywhere).
2. Installs the project `settings.json` (agent teams on, model-routing depth, permission allow/deny list).
3. Runs `engine\scripts\set-core-settings.ps1` to wire the **model-routing env vars**, the **agent-use logger**, and the **live dashboard hooks**, and copies the dashboard + helper scripts into `~/.claude\agenthq\`.

Then open a **new** terminal in this folder and run `claude`, then type `/hq`.

## Using this repo as your working project
Open this repo folder in Claude Code. `OPERATING-MANUAL.md` at the root is the operating manual every agent reads; the installer creates a local `CLAUDE.md` that imports it so Claude Code loads it automatically. Agents write their working output into the runtime folders (`docs/`, `finance/`, `ops/`, `comms/`, `security/`, `learnings/`, …) described in [architecture.md](architecture.md).

## Verify
- `claude` → `/agents` should list ~345 agents.
- Start any team (e.g. `/cto` with a small task). The dashboard should open at `http://127.0.0.1:4765/`.
