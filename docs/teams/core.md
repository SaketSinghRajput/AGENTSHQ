# Core — Shared workers & self-improvement

Command: `(shared)`  ·  Agents: 7  ·  Skills: 5

## Agents

| Agent | Model | Description |
|---|---|---|
| `agent-architect` | opus | Designs new specialist or worker agents when a recurring task has no good owner; writes agent files to .claude/agents/ (prefix gen-) after Saket approves. Use when gaps repeat. |
| `skill-curator` | opus | Improves the agent company over time: mines agent memories, retros and usage logs, proposes precise skill/agent edits for Saket's approval. Use via /evolve or weekly. |
| `worker-haiku` | haiku | Tier C1 worker (Claude Haiku): simple atomic tasks - lookups, small edits, template filling, simple scripts, tidy tables. |
| `worker-local` | haiku | Tier C0 worker: runs trivial or privacy-sensitive low-risk atomic tasks on a local open-weight model via Ollama, then checks the result. Use for summarise/reformat/translate/classify/extract/boilerplate. |
| `worker-opus` | opus | Tier C3/C4 worker (Claude Opus): complex atomic tasks - architecture, hard debugging, multi-step legal/financial/strategy reasoning, final synthesis. |
| `worker-sonnet` | sonnet | Tier C2 worker (Claude Sonnet): standard atomic tasks - write a function/module, draft a section, data analysis, sourced research summary. |
| `worker-verifier` | sonnet | Independent checker for C2-C4 outputs: tests, cross-checks facts and numbers, verifies acceptance criteria. Use before integrating important results. |

## Skills

| Skill | Description |
|---|---|
| `evolve` | Run the skill-evolution cycle: review agent memories, retros and usage, propose skill/agent improvements, and apply the ones Saket approves. Invoke with /evolve. |
| `learning-loop` | How agents remember lessons and how skills improve with use (agent MEMORY.md, team retros, curated skill updates). Use at the start and end of every task. |
| `local-llm` | Run a task on a local open-weight model through Ollama (e.g. qwen3.5, llama, gemma, deepseek) using scripts/local_llm.py. Use for C0 trivial or privacy-sensitive low-risk tasks. |
| `task-decomposition-routing` | Break any multi-step task into a task tree, assign specialists, spawn worker agents for atomic tasks and pick the model by complexity (local open-weight, Haiku, Sonnet, Opus). Use for every non-trivial task. |
| `team-comms` | How any agent or team talks to any other: direct messages between agents in a session, handoffs across functions, and a shared board for cross-team requests. Use whenever work needs another specialist, team or the founder. |
