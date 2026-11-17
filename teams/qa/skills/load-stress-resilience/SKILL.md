---
name: load-stress-resilience
description: "Load, stress, spike, soak and breakpoint testing to prove the app holds at 1000+ concurrent users and to find the first bottleneck. Use for scalability and performance failure testing."
---

# Load Stress Resilience

Pick the test by the failure hunted: **load** (hold expected peak, SLOs hold), **stress** (past peak, see the ceiling/degradation shape), **spike** (0→high in seconds, thundering herd/pool exhaustion/autoscale lag), **soak** (hours, memory/FD/connection leaks), **scalability** (step instances, linear vs shared bottleneck), **breakpoint** (ramp to failure, find the knee), **recovery/failover** (fault then restore, MTTR/data integrity).

Realistic profile: model full user journeys weighted by real mix (e.g. 70% read/20% search/10% write), randomized think time (1-10s), staged ramp (0→1000 over 5-10 min, plateau, down), unique parameterized data (reusing one account hides lock contention + inflates cache). Assert as thresholds that FAIL the run: p95 and p99 latency (tail, not avg), sustained throughput, error rate <0.1-1%, saturation (CPU/mem/DB connections/threads/queue) below danger.

Tools: k6 (JS, `stages`+`thresholds`, CI-friendly), Locust (Python `@task`, web UI), Gatling, JMeter (headless `-n`), Artillery (YAML), wrk/hey/vegeta (single-endpoint smoke).

Watch/reproduce: connection-pool/thread exhaustion, DB lock contention/N+1, GC pauses, memory leaks (soak), queue backlog, cache stampede, retry amplification, rate-limit behaviour (clean 429 not 5xx), autoscaling lag, cascading failure. Templates: peak baseline (30 min, SLOs hold); breakpoint (knee ≥1.5x peak); spike 50→2000 in 10s (error window <30s, auto-recovers); soak 8-24h (RSS/connections/p99 flat); stress 3x (sheds cleanly, no 500 storm); scalability step (≈linear).


Sources: k6 test-types guide · Locust docs · Google SRE (cascading failures, handling overload) · AWS Well-Architected Reliability · Nygard, Release It! (circuit breaker, bulkhead).
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
