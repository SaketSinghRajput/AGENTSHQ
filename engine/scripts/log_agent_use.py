#!/usr/bin/env python3
"""Claude Code SubagentStop hook: logs which agents are used, so /evolve can improve the busiest ones first. Never blocks."""
import csv, datetime, json, os, sys
try:
    data = json.load(sys.stdin)
    d = os.path.join(os.path.expanduser("~"), ".claude", "agenthq"); os.makedirs(d, exist_ok=True)
    f = os.path.join(d, "usage-log.csv"); new = not os.path.exists(f)
    agent = data.get("agent_type") or data.get("subagent_type") or data.get("agent_name") or "unknown"
    with open(f, "a", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh)
        if new: w.writerow(["timestamp", "agent", "event", "cwd"])
        w.writerow([datetime.datetime.now().isoformat(timespec="seconds"), agent, data.get("hook_event_name", ""), data.get("cwd", "")])
except Exception:
    pass
sys.exit(0)
