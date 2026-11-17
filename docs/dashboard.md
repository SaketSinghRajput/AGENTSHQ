# Live dashboard

A local web dashboard that **opens automatically when any team starts working**, at `http://127.0.0.1:4765/`.

Shows:
- **Currently working** — each active sub-agent: name, team tag, the task it's on, a running timer.
- **Recently finished** — last completions and how long they took.
- Counters: agents working, teams active, done this session. Refreshes every 2 seconds. Private to your machine.

How it works: Claude Code fires `SubagentStart` / `SubagentStop` hooks → `engine/scripts/agent_status.py` updates `~/.claude/agenthq/status.json` and launches `engine/scripts/dashboard_server.py`, which serves `engine/dashboard/index.html`.

Open it manually any time:
```bat
python "%USERPROFILE%\.claude\agenthq\dashboard_server.py"
```
then visit `http://127.0.0.1:4765/`.
