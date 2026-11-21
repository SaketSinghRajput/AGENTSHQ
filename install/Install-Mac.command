#!/bin/bash
# AgentHQ installer (macOS). Double-click in Finder, or run:  bash install/Install-Mac.command
# Installs every team's agents + skills into project and user scope, then wires core settings
# (routing env, logging, live dashboard hooks). Safe to re-run.
set -e
repo="$(cd "$(dirname "$0")/.." && pwd)"
proj="$repo/.claude"
user="$HOME/.claude"
hq="$user/agenthq"
echo "Installing AgentHQ (all teams, agents and skills) into Claude Code..."
echo

# prerequisites (warn only: files still install without them)
command -v claude  >/dev/null 2>&1 || echo "[WARN] 'claude' not found on PATH. Install Claude Code first: https://docs.claude.com/claude-code"
PY=python3; python3 -c "" >/dev/null 2>&1 || PY=""
[ -n "$PY" ] || echo "[WARN] 'python3' not found. Dashboard and hooks need Python 3 (xcode-select --install or brew install python)."

# all teams -> agents + skills
nteams=0
for base in "$proj" "$user"; do
  mkdir -p "$base/agents" "$base/skills"
  nteams=0
  for t in "$repo"/teams/*/; do
    nteams=$((nteams+1))
    [ -d "$t/agents" ] && find "$t/agents" -maxdepth 1 -name '*.md' -exec cp -f {} "$base/agents/" \;
    [ -d "$t/skills" ] && cp -Rf "$t/skills/." "$base/skills/"
  done
  echo "[OK] $nteams teams installed into $base"
done
nagents=$(find "$repo"/teams/*/agents -maxdepth 1 -name '*.md' | wc -l | tr -d ' ')
nskills=$(find "$repo"/teams/*/skills -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')

# project settings template (agent teams on, routing, permissions)
[ -f "$repo/teams/cto/settings.json" ] && cp -f "$repo/teams/cto/settings.json" "$proj/settings.json" && echo "[OK] project settings.json"

# operating manual: local CLAUDE.md (not versioned) that imports OPERATING-MANUAL.md
[ -f "$repo/CLAUDE.md" ] || { echo "@OPERATING-MANUAL.md" > "$repo/CLAUDE.md"; echo "[OK] CLAUDE.md -> OPERATING-MANUAL.md"; }

# core settings (mac port of engine/scripts/set-core-settings.ps1)
mkdir -p "$hq" "$repo/learnings/proposals/agents" "$repo/learnings/history"
for f in local_llm.py log_agent_use.py agent_status.py dashboard_server.py; do cp -f "$repo/engine/scripts/$f" "$hq/"; done
cp -f "$repo/engine/dashboard/index.html" "$hq/dashboard.html"
cp -f "$repo/engine/dashboard/agent_team.json" "$hq/"
if [ -n "$PY" ]; then
  "$PY" - "$user/settings.json" "$hq" <<'EOF'
import json, os, sys
f, hq = sys.argv[1], sys.argv[2]
j = json.load(open(f)) if os.path.exists(f) and os.path.getsize(f) else {}
j.setdefault("env", {}).update({"CLAUDE_CODE_MAX_SUBAGENT_SPAWN_DEPTH": "3", "AGENTHQ_LOCAL_MODEL": "qwen3.5"})
cmd = lambda p: {"type": "command", "command": 'python3 "%s"' % os.path.join(hq, p)}
h = j.setdefault("hooks", {})
h["SubagentStart"] = [{"hooks": [cmd("agent_status.py")]}]
h["SubagentStop"]  = [{"hooks": [cmd("agent_status.py"), cmd("log_agent_use.py")]}]
h["Stop"]          = [{"hooks": [cmd("agent_status.py")]}]
json.dump(j, open(f, "w"), indent=2)
EOF
  echo "[OK] Routing, logging and live dashboard hooks applied to $user/settings.json"
else
  echo "[SKIP] Hooks not configured (no python3). Install Python 3 and re-run."
fi

echo
echo "Installed $nagents agents and $nskills skills from $nteams teams."
echo "Open a NEW terminal in this folder:  claude   then type  /hq"
