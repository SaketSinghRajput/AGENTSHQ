---
name: task-decomposition-routing
description: "Break any multi-step task into a task tree, assign specialists, spawn worker agents for atomic tasks and pick the model by complexity (local open-weight, Haiku, Sonnet, Opus). Use for every non-trivial task."
---

# Task Decomposition & Model Routing

Use whenever a task has more than one step or more than one kind of expertise.

## Protocol
1. **Decompose** the goal into a task tree: goal → work packages (one per department/specialist) → atomic tasks (each ≤ ~30 min of work, one clear output, one owner).
2. **Assign** each work package to the matching specialist subagent of your team (or another team's specialist).
3. Specialists **split further** into atomic tasks and spawn **worker agents** for them (max 3 layers below the main session). Give each worker: the exact input files, the expected output file/format, acceptance criteria, and its tier.
4. **Route by complexity** using the tiers below. Pass the tier's model when spawning (`haiku`, `sonnet`, `opus`); for C0 use `worker-local`.
5. **Run independent tasks in parallel**; sequence dependent ones.
6. **Verify** before integrating: C2+ outputs get checked against acceptance criteria; C3/C4 get `worker-verifier`.
7. **Integrate** results upward; the parent owns the final quality.
8. If no specialist fits a recurring need, ask `agent-architect` to propose a new agent.

Write the tree to `<team-folder>/<slug>/TASKS.md`:
`ID | task | owner agent | tier/model | depends on | output | status`

## Complexity tiers (pick the cheapest tier that will do the job well)

| Tier | Typical atomic task | Worker | Model |
|---|---|---|---|
| C0 trivial | reformat, rename, summarise a short text, translate a draft, classify, extract fields, boilerplate, first-pass checklists | `worker-local` | open-weight model via Ollama (free, offline, private) |
| C1 simple | lookups in files, small edits, fill templates, simple scripts, tidy tables | `worker-haiku` | Claude Haiku |
| C2 standard | write a function/module, draft a doc section, analysis with data, research summary with sources | `worker-sonnet` | Claude Sonnet |
| C3 complex | architecture, tricky debugging, multi-step reasoning, legal/financial/strategy analysis, final synthesis | `worker-opus` | Claude Opus |
| C4 critical | anything binding, money, safety, security, production, external-facing | `worker-opus` + `worker-verifier` + Saket's approval | Opus + independent check |

Escalate one tier if a worker fails twice or the output fails verification. Confidential data (personal, financial, legal, client) prefers `worker-local` or Claude, never third-party tools. Never send high-stakes (C3/C4) work to a local model alone.

