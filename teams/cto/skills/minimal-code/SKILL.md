---
name: minimal-code
description: "Gate every change before coding (justify why it's needed and find the smallest change), and review finished code to make it small, clean and DRY. Use before any agent writes code and after code is written."
---

# Minimal, justified code

## A. Scope gate — run BEFORE any coding starts
Ask the requesting agent to answer in 3 lines; block coding until they do:
1. **Why** is this change needed (what user-visible outcome or bug)?
2. **Smallest change** that achieves it — which existing file/function/line, not a new system?
3. **Does it already exist** (a component, util, config, CSS var, prop) that we can reuse or just tweak?

Reject over-engineering:
- A styling/content/config change must not add new code paths. "Change a button colour" = edit one token/class/style, **not** a new component, wrapper, state, or 100 lines.
- No new dependency, abstraction, service, or file unless the task truly needs it (name the concrete reason).
- Prefer: edit in place → reuse existing → extend minimally → (last resort) add new.
- YAGNI: no speculative features, options, or config "for later".
Output a one-line verdict: **PROCEED (smallest path: …)** or **SIMPLIFY FIRST (do X instead)**.

## B. Clean-up pass — run AFTER code is written
- Remove dead code, duplicate logic (DRY), unused vars/imports, commented-out blocks, needless nesting.
- Smaller surface: fewer lines, fewer branches, clear names, early returns; delete > add.
- Keep behaviour identical: rely on existing tests; add one only if coverage is missing. Never change public APIs or behaviour to "tidy" without the owner's OK.
- Measure: report lines added/removed and what was simplified. Smaller diff with the same result is the win.

Guardrail: you simplify and gatekeep; you don't silently drop features or alter intended behaviour. Flag anything that looks like a real requirement before removing it.
