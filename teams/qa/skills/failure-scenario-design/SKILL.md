---
name: failure-scenario-design
description: "Design a catalog of ways the app can fail \u2014 server-side faults AND human error \u2014 mapped to each feature, with expected resilient behaviour and how to observe. Use first on any app, to drive the whole test plan."
---

# Failure Scenario Design

Produce `qa/<app>/FAILURE-CATALOG.md`. For every critical feature/flow, brainstorm how it breaks across both pillars and rate each by likelihood x impact:

**Server-side faults:** latency, 5xx errors, dependency/DB outage, DB pool exhaustion/slow query/deadlock, network loss/partition, DNS, resource exhaustion (CPU/mem/disk/FDs), cache down/cold, queue backlog, clock skew, partial/AZ failure, retry storm, cascading failure.
**Human / real-user error:** double-submit, wrong step order, back/refresh mid-flow, app killed mid-transaction, network lost mid-action, interruption (call/notification/OTP), rotation, fat-finger wrong field, wrong date/number/locale format, paste with hidden chars, emoji/mixed scripts, very long input, expired session, two tabs/devices, denied permission.
**Data/logic:** boundary values, overflow, race conditions (double-spend/oversell/double-booking), idempotency on retry, partial transaction (money moved, record not written), rounding, truncation, IDOR, mass assignment.

Each row: `feature | failure to inject | how a real user/server triggers it | expected resilient behaviour | how to observe (metric/log/screen) | severity`. This catalog is the backlog the specialist testers execute.

> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
