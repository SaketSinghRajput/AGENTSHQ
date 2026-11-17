#!/usr/bin/env python3
"""Run a prompt on a local Ollama model. Usage:
  python local_llm.py --list
  python local_llm.py --model qwen3.5 --prompt-file in.txt [--out out.txt]
  echo "text" | python local_llm.py
"""
import argparse, json, os, sys, urllib.request
HOST = os.environ.get("OLLAMA_HOST", "http://localhost:11434")
if not HOST.startswith("http"): HOST = "http://" + HOST
def call(path, payload=None):
    req = urllib.request.Request(HOST + path, data=json.dumps(payload).encode() if payload else None,
                                 headers={"Content-Type": "application/json"})
    with urllib.request.urlopen(req, timeout=600) as r: return json.loads(r.read())
ap = argparse.ArgumentParser()
ap.add_argument("--model", default=os.environ.get("AGENTHQ_LOCAL_MODEL", "qwen3.5"))
ap.add_argument("--prompt-file"); ap.add_argument("--out"); ap.add_argument("--list", action="store_true")
ap.add_argument("--ctx", type=int, default=16384); ap.add_argument("--temperature", type=float, default=0.2)
a = ap.parse_args()
try:
    if a.list:
        for m in call("/api/tags").get("models", []): print(m["name"])
        sys.exit(0)
    prompt = open(a.prompt_file, encoding="utf-8").read() if a.prompt_file else sys.stdin.read()
    res = call("/api/generate", {"model": a.model, "prompt": prompt, "stream": False,
                                 "options": {"num_ctx": a.ctx, "temperature": a.temperature}})
    text = res.get("response", "")
    if a.out: open(a.out, "w", encoding="utf-8").write(text); print(f"[ok] wrote {a.out} ({len(text)} chars)")
    else: print(text)
except Exception as e:
    print(f"[local_llm error] {e}. Is Ollama running and is the model pulled? (ollama pull {a.model})", file=sys.stderr); sys.exit(1)
