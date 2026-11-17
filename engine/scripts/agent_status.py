#!/usr/bin/env python3
"""Claude Code hook: tracks which subagents are active and what they're doing,
writes ~/.claude/agenthq/status.json, and launches the live dashboard on first activity.
Wired to SubagentStart / SubagentStop / Stop. Never blocks (always exits 0)."""
import json, os, sys, time, subprocess, socket

HQ = os.path.join(os.path.expanduser("~"), ".claude", "agenthq")
STATUS = os.path.join(HQ, "status.json")
LOCK = os.path.join(HQ, "dashboard.lock")
PORT = 4765

def load(p, d):
    try:
        with open(p) as f: return json.load(f)
    except Exception: return d

def save(p, obj):
    tmp = p + ".tmp"
    with open(tmp, "w") as f: json.dump(obj, f)
    os.replace(tmp, p)

def task_of(data):
    for k in ("prompt", "description", "task", "message", "input"):
        v = data.get(k)
        if isinstance(v, str) and v.strip():
            return v.strip().replace("\n", " ")[:160]
    return ""

def port_open(port):
    s = socket.socket(); s.settimeout(0.2)
    try:
        s.connect(("127.0.0.1", port)); return True
    except Exception:
        return False
    finally:
        s.close()

def ensure_dashboard():
    # start server once
    if not port_open(PORT):
        server = os.path.join(HQ, "dashboard_server.py")
        if os.path.exists(server):
            try:
                kw = {}
                if os.name == "nt":
                    kw["creationflags"] = 0x00000008 | 0x00000200  # DETACHED | NEW_GROUP
                subprocess.Popen([sys.executable, server], stdout=subprocess.DEVNULL,
                                 stderr=subprocess.DEVNULL, stdin=subprocess.DEVNULL, **kw)
                time.sleep(1.0)
            except Exception:
                pass
    # open browser once per session-ish (lock refreshed hourly)
    try:
        if (not os.path.exists(LOCK)) or (time.time() - os.path.getmtime(LOCK) > 3600):
            open(LOCK, "w").write(str(time.time()))
            url = f"http://127.0.0.1:{PORT}/"
            if os.name == "nt":
                os.startfile(url)  # noqa
            elif sys.platform == "darwin":
                subprocess.Popen(["open", url])
            else:
                subprocess.Popen(["xdg-open", url])
    except Exception:
        pass

def main():
    os.makedirs(HQ, exist_ok=True)
    data = {}
    try:
        data = json.load(sys.stdin)
    except Exception:
        pass
    event = data.get("hook_event_name", "")
    name = data.get("agent_type") or data.get("subagent_type") or data.get("agent_name") or "agent"
    st = load(STATUS, {"active": {}, "recent": [], "updated": 0})
    st["active"] = {k: v for k, v in st.get("active", {}).items()
                    if time.time() - v.get("start", 0) < 7200}  # drop stale >2h
    now = time.time()
    aid = data.get("agent_id") or data.get("session_id") or f"{name}-{int(now*1000)}"

    if event == "SubagentStart":
        st["active"][aid] = {"name": name, "task": task_of(data), "start": now}
        ensure_dashboard()
    elif event in ("SubagentStop", "Stop"):
        gone = st["active"].pop(aid, None)
        if gone is None:
            for k, v in list(st["active"].items()):
                if v.get("name") == name:
                    gone = st["active"].pop(k); break
        if gone:
            gone["end"] = now
            gone["secs"] = round(now - gone.get("start", now))
            st["recent"] = ([gone] + st.get("recent", []))[:20]
    st["updated"] = now
    save(STATUS, st)

main()
sys.exit(0)
