---
name: panel-synthesis
description: "How the panel lead rolls many persona verdicts into one idea recommendation and one app verdict, and reports both to the CEO. Use after collecting persona verdicts."
---

Collect every persona's two blocks, then:

**Idea report** (`panel/<product>/IDEA-REPORT.md`):
- Mean/median idea score + spread; % "Very disappointed" (apply the Sean Ellis 40% bar).
- Segment personas: Champions (4-5), Neutrals, Detractors (1-2). Name the profile/context that distinguishes lovers from haters -> that's the likely beachhead and the "not-for" segment.
- Recurring objections and the dominant job-to-be-done. Willingness-to-pay pattern (and which are hypothetical).
- Recommendation: Pursue / Pursue-with-fixes / Pivot / Drop + target segment + the single riskiest assumption to validate with real users.

**App verdict** (`panel/<product>/APP-VERDICT.md`):
- Task success rate across personas; mean SUS; every severity-3/4 issue (any recurring one is a must-fix launch gate).
- Which failures are context-specific (device/network/literacy/language) vs universal.
- Verdict: Ship / Ship-with-fixes / Not-ready + top 3 must-fix dealbreakers.

Keep idea-verdict and app-verdict separate (great idea + failing app = fix usability; polished app + low idea scores = fix the value prop).

**Report to the CEO:** write both files, then hand them to the CEO via `team-comms` — create `comms/handoffs/panel-to-ceo-<product>.md` (idea report + app verdict, each 10 lines max, with the one next test). Both the idea feedback and the application verdict go to the CEO.

> This is a SYNTHETIC panel: a hypothesis engine and pre-flight check, NOT evidence of real demand. Personas role-play predicted reactions; they can be plausible-but-wrong, regress to stereotypes, and cannot actually pay or churn. Never present a panel verdict as real traction or market research. Every strong verdict ends with the single riskiest assumption to validate with >=5 real target users. No fabricated numbers, quotes, or "real user" claims.