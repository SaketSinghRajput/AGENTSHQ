---
name: qa-intake
description: "QA & Reliability intake: confirm the app, environment and authorisation, build the failure catalog, staff specialists and plan the campaign. Use at the start of every testing engagement."
---

# Qa Intake

1. Confirm the target app, that it's Saket's, and a safe environment (staging preferred) + window. If load/chaos/destructive tests are in scope, require Saket's authorisation.
2. Run `failure-scenario-design` to build `qa/<app>/FAILURE-CATALOG.md`.
3. Staff specialists for the pillars the app needs (server-side faults, load/resilience, human-error, mobile/device, negative/boundary, concurrency/data, API, usability).
4. Write `qa/<app>/PLAN.md`: scope, environment, catalog link, test waves, tools, abort conditions, first tasks. Add a row to `qa/STATUS.md`.

> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
