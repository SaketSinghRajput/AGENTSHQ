---
name: data-integrity-concurrency
description: "Race-condition and data-integrity testing: double-spend, lost update, idempotency, partial transactions and money/rounding bugs. Use for concurrency and transactional correctness."
---

# Data Integrity Concurrency

Core failures (two ops interleave on shared state): lost update, double-spend/oversell, TOCTOU, double-submit/duplicate order, idempotency failure on retry, double booking. **Test:** fire N parallel identical requests (50 threads: `hey`, `k6`, or `curl &` burst with a release barrier) and assert **exactly one** success/resource/decrement; replay with the same idempotency key → returns the first result, creates nothing. **Fixes to verify exist:** idempotency keys (dedupe + stored result, survive crash/retry window); optimistic locking (version/ETag, `UPDATE ... WHERE version=?`, 0 rows → 409); pessimistic `SELECT ... FOR UPDATE`; DB constraints as backstop (`UNIQUE` slot, `CHECK (stock>=0)`, atomic `UPDATE SET bal=bal-? WHERE bal>=?`). **State/workflow:** step-skip, replay old request/OTP/coupon/webhook, expired token, act-after-logout, back-button re-submit, partial transaction (money debited, order not written → verify all-or-nothing). **Data integrity:** validation gaps, type coercion (`"0"`==0, JSON >2^53 precision), float money (store minor units/decimal), encoding/utf8mb4, silent truncation, orphaned records, failed-but-not-rolled-back (crash-inject mid-op, check invariant `sum(debits)=sum(orders)`).


Sources: ISTQB boundary value analysis · OWASP WSTG business-logic & data-validation · Fowler, Optimistic Offline Lock · HTTP optimistic locking (ETag/If-Match) · Jepsen consistency.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
