# QA & Reliability — testing team

Command: `/qa`  ·  Agents: 13  ·  Skills: 15

## Agents

| Agent | Model | Description |
|---|---|---|
| `api-abuse-tester` | sonnet | Malformed/oversized/out-of-contract API requests, IDOR, mass assignment, webhook replay. Use for API robustness. |
| `bug-reporter-triage` | sonnet | Writes reproducible bug reports with severity and evidence; triages to CTO engineers. Use for every finding. |
| `chaos-fault-injection-engineer` | sonnet | Injects server-side faults (latency, errors, dependency/DB/network/resource failures) to test graceful degradation. Use for backend resilience. |
| `data-integrity-concurrency-tester` | opus | Race conditions, idempotency, double-spend, partial transactions, money/rounding. Use for concurrency and transactional correctness. |
| `exploratory-tester` | sonnet | Charter-based exploratory testing with tours and heuristics to find bugs scripts miss. Use for creative human-driven testing. |
| `human-error-tester` | sonnet | Reproduces real users' mistakes (double-submit, interruptions, wrong order, bad input) and checks safe handling. Use to test flows like a real user. |
| `load-stress-engineer` | sonnet | Load/stress/spike/soak testing to prove 1000+ concurrent users and find the first bottleneck. Use for performance failure testing. |
| `mobile-realworld-tester` | sonnet | Drives the real connected Android phone via adb like a user; simulates app-kill, network loss, interruptions; captures screenshots/logs. Use for on-device testing. |
| `negative-boundary-tester` | sonnet | Hits every input with edge/invalid/injection-as-data values and checks it fails safely. Use for input validation testing. |
| `qa-reliability-lead` | opus | Head of Quality & Reliability: builds the failure catalog, plans the test campaign, assigns specialists, and signs off launch readiness. Use to run a full testing campaign. |
| `recovery-failover-tester` | sonnet | Tests circuit breakers, bulkheads, retries, load shedding, failover and MTTR. Use to verify the app recovers from faults. |
| `scenario-designer` | opus | Designs the catalog of every way the app can fail — server-side and human — per feature. Use first to drive the whole test plan. |
| `usability-accessibility-tester` | sonnet | Think-aloud and WCAG real-failure testing; task success/error/time. Use to judge and improve UX. |

## Skills

| Skill | Description |
|---|---|
| `api-abuse-testing` | Abuse-case testing of REST/GraphQL APIs: malformed/oversized/out-of-contract requests, pagination abuse, IDOR, mass assignment and replayed webhooks. Use for API robustness and logic testing. |
| `bug-report-triage` | Write clear, reproducible bug reports with severity and evidence, and triage them to the right CTO engineer. Use for every finding. |
| `chaos-fault-injection` | Inject controlled server-side faults (latency, errors, dependency/DB/network/resource failures) to verify graceful degradation and recovery. Use for resilience testing of the backend. |
| `data-integrity-concurrency` | Race-condition and data-integrity testing: double-spend, lost update, idempotency, partial transactions and money/rounding bugs. Use for concurrency and transactional correctness. |
| `exploratory-testing` | Structured exploratory testing: session-based charters, Whittaker tours, and Bach/Bolton heuristics to find bugs scripts miss. Use for creative, human-driven testing of any feature. |
| `failure-scenario-design` | Design a catalog of ways the app can fail — server-side faults AND human error — mapped to each feature, with expected resilient behaviour and how to observe. Use first on any app, to drive the whole test plan. |
| `human-error-scenarios` | Reproduce the mistakes real (often non-expert) users make and verify the app handles them safely. Use to test flows the way humans actually use them. |
| `load-stress-resilience` | Load, stress, spike, soak and breakpoint testing to prove the app holds at 1000+ concurrent users and to find the first bottleneck. Use for scalability and performance failure testing. |
| `mobile-realworld-testing` | Test a real connected Android phone like a real user via adb: install, drive the UI, simulate interruptions/network loss/app-kill, capture screenshots and logs. Use for on-device testing on low-end devices and patchy networks. |
| `negative-boundary-testing` | Negative and boundary testing: hit every input with edge values, invalid classes and injection-as-data, and assert it fails safely (clear 4xx, no crash, no partial write, no stack-trace leak). Use for input validation testing. |
| `qa-intake` | QA & Reliability intake: confirm the app, environment and authorisation, build the failure catalog, staff specialists and plan the campaign. Use at the start of every testing engagement. |
| `qa-status-report` | QA & Reliability status report for the founder. Use when asked for test status or at session end. |
| `qa` | QA & Reliability mode - break the app the way real failures and real users do (server-side faults + human error) with 13 testing specialists, and hand back fixes. Invoke with /qa. |
| `recovery-failover` | Test recovery, failover and graceful-degradation patterns: circuit breakers, bulkheads, timeouts, retries-with-jitter, load shedding, health checks, MTTR. Use to verify the app survives and recovers from faults. |
| `usability-accessibility-testing` | Usability and accessibility testing that catches real failures: think-aloud tasks, the 5-user method, task success/error/time, and WCAG issues that actually block users. Use to judge and improve UX. |
