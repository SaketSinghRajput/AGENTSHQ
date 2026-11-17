---
name: remediation-pairing
description: "Turn findings into fixes with the CTO/engineering team and verify them. Use after reporting, to close findings."
---

For each confirmed finding: propose the exact code/config change (hand to the relevant CTO-team engineer), add a test that fails on the vuln and passes after the fix, retest to confirm, and mark the finding Closed with evidence. Track open vs closed in `security/<app>/findings.md`. Themes feed back into secure-coding guidance.

> Rules of engagement (non-negotiable): Test ONLY assets listed in `security/scope.md` that Saket owns and has authorised in writing for this engagement. Default to non-destructive checks; take a backup/snapshot before anything that could change state and prefer a staging copy. Never test third-party systems, shared infrastructure, or production customer data without explicit written authorisation. Never exfiltrate real personal data — use the minimum proof needed. Stop immediately and report if you find signs of a real prior breach, or encounter data/systems outside scope. Every finding is reported privately to Saket with a fix; nothing is published or sent to anyone else. This is defensive testing to harden Saket's own applications.