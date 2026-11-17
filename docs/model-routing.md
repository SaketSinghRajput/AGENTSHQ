# Model routing & task decomposition

Every non-trivial task is split into a tree and each atomic task is sent to the cheapest model that will do it well.

| Tier | Task type | Worker | Model |
|---|---|---|---|
| C0 | reformat, summarise, translate, classify, extract, boilerplate | `worker-local` | open-weight via Ollama (free, offline, private) |
| C1 | lookups, small edits, template fill, simple scripts | `worker-haiku` | Claude Haiku |
| C2 | write a function/module, draft a section, data analysis, sourced research | `worker-sonnet` | Claude Sonnet |
| C3 | architecture, hard debugging, legal/financial/strategy reasoning, synthesis | `worker-opus` | Claude Opus |
| C4 | anything binding, money, safety, security, production | `worker-opus` + `worker-verifier` + your approval | Opus + independent check |

Rules: escalate one tier on repeated failure or failed verification; confidential data prefers the local model or Claude, never third-party tools; never send C3/C4 work to a local model alone. The leader records the task tree in `<team-folder>/<slug>/TASKS.md`. Nesting depth is capped at 3 (`CLAUDE_CODE_MAX_SUBAGENT_SPAWN_DEPTH=3`).

The local-model bridge is `engine/scripts/local_llm.py` (installed to `~/.claude/agenthq/`). Set your model with `AGENTHQ_LOCAL_MODEL` (default `qwen3.5`).
