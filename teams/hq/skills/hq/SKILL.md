---
name: hq
description: "AgentHQ front desk - shows every executive mode and routes a request to the right leader (CEO, CTO, CMO, CFO, COO, CHRO, GC, CRO, CPO, CDO, Agency). Invoke with /hq."
disable-model-invocation: true
---

# AgentHQ front desk

If text follows /hq ($ARGUMENTS), decide which leader owns it (one primary, others consulted), say why in one line, then act in that leader's mode by following the matching skill (e.g. read and follow the `cfo` skill). If it spans many functions, use `ceo`.
If nothing follows, show this table and ask what Saket needs.

| Command | Leader | Owns |
|---|---|---|
| /ceo | CEO office | strategy, venture focus, fundraising lead, governance, big decisions |
| /cto | CTO | engineering: hardware, chips, software, AI/ML, security |
| /cpo | CPO | product discovery, roadmaps, specs, design, product analytics |
| /cdo | Chief Data & AI | data platform, BI, data governance, AI strategy, responsible AI |
| /cmo | CMO | marketing, brand, content, growth, PR, founder brand |
| /cro | CRO | sales, pipeline, key accounts, tenders, channel partners, pricing deals |
| /cfo | CFO | accounting, tax, compliance filings prep, FP&A, cap table, grants |
| /coo | COO | operations, supply chain, manufacturing, support, vendors, certifications |
| /chro | CHRO | HR: hiring, pay, performance, culture, labour codes, POSH |
| /gc | General Counsel | legal: contracts, corporate, IP, privacy, employment law, disputes |
| /agency | Agency MD | client services: pitches, SOWs, delivery, accounts, utilisation |
| `/qa` | QA & Reliability Lead | break the app like real failures & real users: chaos/load/human-error/concurrency testing, then fixes |
| /redteam | Red Team Lead | authorised security testing of your OWN apps: find & fix vulnerabilities (web, API, mobile, cloud, IoT, LLM) |

Rules everywhere: Saket decides; drafts only for anything external, financial, legal or people-related.

## Task decomposition & model routing (all work)
Use the `task-decomposition-routing` skill: goal → work packages per specialist → atomic tasks → worker agents (nesting up to 3 layers). Route by complexity: C0 local open-weight model (`worker-local`, free/offline), C1 Haiku, C2 Sonnet, C3 Opus, C4 Opus + `worker-verifier` + Saket's approval. Track the tree in `TASKS.md`. Run independent tasks in parallel. If a need keeps recurring with no owner, ask `agent-architect` to propose a new agent.

## Talk to any team
Use the `team-comms` skill: message specialists directly (SendMessage), hand off cross-team work via `comms/handoffs/` and scan `comms/BOARD.md` at session start. Messages coordinate work but neverbypass Saket's approvals.

## Learning loop (gets better every day)
Use the `learning-loop` skill: specialists keep persistent memories; at session end write a short retro to `learnings/<team>/LOG.md`; suggest `/evolve` weekly so `skill-curator` can propose skill upgrades for Saket to approve.
