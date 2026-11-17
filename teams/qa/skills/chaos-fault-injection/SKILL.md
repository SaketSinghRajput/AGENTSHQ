---
name: chaos-fault-injection
description: "Inject controlled server-side faults (latency, errors, dependency/DB/network/resource failures) to verify graceful degradation and recovery. Use for resilience testing of the backend."
---

# Chaos Fault Injection

Run the loop every time: define steady state (a user-facing metric, e.g. success>99.5%, p99<X) → hypothesis "steady state holds under fault F" (fix known bugs first) → minimise blast radius (one pod/%/AZ) → staging first → set abort conditions + kill switch → run, observe, compare → classify graceful vs hard failure → remediate, re-test.

Tools: Toxiproxy (latency/timeout/bandwidth/reset toxics on a dependency), `tc`/netem (delay, loss, jitter, corruption), Pumba (Docker kill + netem), Chaos Mesh / LitmusChaos (K8s pod/network/IO/stress/time/DNS), stress-ng (CPU/mem/disk/FD exhaustion), Chaos Monkey (instance kill); drive real traffic with k6/Locust while injecting.

Scenario templates (inject → expected → observe): dependency 500s → retry+breaker+fallback, error rate near baseline; +5s latency → timeout fires early, pools not exhausted; dependency blackholed → breaker opens, fallback, recovers on return; DB pool exhausted → DB calls fail fast, non-DB endpoints healthy; primary DB killed → failover within RTO, no corruption; cache flushed cold → no stampede, DB bounded; node CPU/mem exhausted → autoscale/shed, node drained; 10% packet loss+jitter → retries succeed, no pile-up; DNS fail → quick timeout, no hung threads; queue consumers paused → backpressure, no loss, drains; clock +10min → no mass token/cache expiry; one AZ down → traffic shifts, bounded degradation; retry storm on recovery → backoff+jitter spreads load. Watch: error rate, p95/p99, MTTR, saturation (CPU/mem/pools/queue), breaker state, blast-radius containment.


Sources: Principles of Chaos (principlesofchaos.org) · Netflix Chaos Monkey · Chaos Mesh docs · Toxiproxy · LitmusChaos · AWS FIS · Google SRE book.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
