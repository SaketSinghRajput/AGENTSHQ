---
name: qa-status-report
description: "QA & Reliability status report for the founder. Use when asked for test status or at session end."
---

# Qa Status Report

Coverage by pillar (done/total) · open findings by severity (S1-S4) · load/resilience results vs targets (p95/p99, error rate, MTTR) · top 5 bugs with fix owner · launch-readiness Go/No-Go read · decisions for Saket · next 3 actions. Max 15 lines. Update `qa/STATUS.md`.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
