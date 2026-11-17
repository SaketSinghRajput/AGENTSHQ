---
name: vuln-report
description: "Write a clear vulnerability report with severity, reproduction, evidence and a concrete fix. Use for every finding."
---

`security/<app>/findings.md`, one block per finding:
- **ID / Title**, affected asset, **severity** (CVSS v3.1 base + vector), confidence.
- **What** (the weakness) and **why it matters** (realistic impact).
- **Reproduction**: minimal, safe steps on the authorised target (no real customer data).
- **Evidence**: request/response or log excerpt with secrets redacted.
- **Fix**: specific remediation (code/config), plus a regression test to add.
- **References**: OWASP/CWE IDs.
Rank by severity. Summarise top 5 for Saket in plain language. Verify each fix after it is applied (retest).

> Rules of engagement (non-negotiable): Test ONLY assets listed in `security/scope.md` that Saket owns and has authorised in writing for this engagement. Default to non-destructive checks; take a backup/snapshot before anything that could change state and prefer a staging copy. Never test third-party systems, shared infrastructure, or production customer data without explicit written authorisation. Never exfiltrate real personal data — use the minimum proof needed. Stop immediately and report if you find signs of a real prior breach, or encounter data/systems outside scope. Every finding is reported privately to Saket with a fix; nothing is published or sent to anyone else. This is defensive testing to harden Saket's own applications.