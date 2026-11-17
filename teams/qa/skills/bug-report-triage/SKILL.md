---
name: bug-report-triage
description: "Write clear, reproducible bug reports with severity and evidence, and triage them to the right CTO engineer. Use for every finding."
---

# Bug Report Triage

`qa/<app>/bugs.md`, one block per bug: **ID/title**, severity (S1 blocker/data-loss/security → S4 cosmetic), **steps to reproduce** (minimal, on the authorised target, test data only), **expected vs actual**, **evidence** (screenshot/log/request-response, secrets redacted), **environment/device/network**, **suspected fix + a regression test to add**, **owner** (which CTO engineer). Rank by severity; summarise the top 5 for Saket in plain language. Verify each fix by re-running the exact repro. Track open vs closed.

> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
