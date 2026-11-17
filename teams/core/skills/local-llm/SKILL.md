---
name: local-llm
description: "Run a task on a local open-weight model through Ollama (e.g. qwen3.5, llama, gemma, deepseek) using scripts/local_llm.py. Use for C0 trivial or privacy-sensitive low-risk tasks."
---

# Local open-weight models (Ollama)

```bash
python ~/.claude/agenthq/local_llm.py --list
python ~/.claude/agenthq/local_llm.py --model qwen3.5 --prompt-file in.txt --out out.txt
echo "Summarise: ..." | python ~/.claude/agenthq/local_llm.py --model qwen3.5
```
- Ollama must be running (`ollama serve` / the Ollama app). Default model: `$AGENTHQ_LOCAL_MODEL` or `qwen3.5`.
- Put the full instruction + input in the prompt; ask for a fixed output format.
- Always check the output (format, obvious errors) before using it; escalate to `worker-haiku` if it is wrong twice.
- Good for: summaries, rewording, translation drafts, classification, extraction, boilerplate. Not for: final legal/financial/security/architecture decisions.
