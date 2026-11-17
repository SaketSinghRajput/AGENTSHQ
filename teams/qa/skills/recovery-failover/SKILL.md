---
name: recovery-failover
description: "Test recovery, failover and graceful-degradation patterns: circuit breakers, bulkheads, timeouts, retries-with-jitter, load shedding, health checks, MTTR. Use to verify the app survives and recovers from faults."
---

# Recovery Failover

For each resilience pattern, assert it works under a real fault: **circuit breaker** trips before caller resources exhaust and recovers (half-open) after the dependency heals; **bulkheads** isolate pools so one dependency failing leaves unrelated endpoints serving; **timeouts** on every outbound call (no infinite hang); **retries** capped with exponential backoff + full jitter (no synchronized storm); **backpressure/bounded queues** (no unbounded memory under overload); **load shedding** returns 503/429 to protect core under overload; **health checks** split liveness vs readiness, unhealthy instances pulled from the LB. Measure **MTTR** (fault removal → SLOs restored) against a target (e.g. <2 min auto-recover) via recovery and failover tests (kill node/DB/AZ mid-load → standby promoted within SLA, bounded error blip, no data loss/dup).


Sources: k6 test-types guide · Locust docs · Google SRE (cascading failures, handling overload) · AWS Well-Architected Reliability · Nygard, Release It! (circuit breaker, bulkhead).
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
