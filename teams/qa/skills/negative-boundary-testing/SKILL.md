---
name: negative-boundary-testing
description: "Negative and boundary testing: hit every input with edge values, invalid classes and injection-as-data, and assert it fails safely (clear 4xx, no crash, no partial write, no stack-trace leak). Use for input validation testing."
---

# Negative Boundary Testing

Partition each input into valid/invalid classes; test just-below/at/just-above boundaries. For every field fire: **numeric/money** 0, -1, negatives, sub-cent, `1e309`, NaN/Infinity, min-1/min/min+1/max-1/max/max+1, int32/int64 overflow, float money (`0.1+0.2`, rounding half, wrong decimal count JPY/BHD), huge qty overflowing `price*qty`; **strings** empty, whitespace-only, leading/trailing spaces (`" admin "`), very long (10k-1M, test 255 truncation), unicode/emoji/combining/RTL `U+202E`/zero-width, null byte, CRLF, control chars, injection as data (`' OR 1=1--`, `<script>`, `{{7*7}}`, `${jndi:}`, `../../etc/passwd`, `%00`), case/NFC-vs-NFD; **dates** past/far-future/epoch, Feb 29 non-leap, month 13/day 32, DST spring-forward/fall-back, TZ mismatch, end-before-start; **null/presence** null, missing key, `[]`, `{}`, false-vs-absent. Rule: invalid inputs must be rejected safely — clear 4xx, no crash, no partial write, no stack trace. Server must re-validate everything the client did (never trust disabled buttons or hidden fields).


Sources: ISTQB boundary value analysis · OWASP WSTG business-logic & data-validation · Fowler, Optimistic Offline Lock · HTTP optimistic locking (ETag/If-Match) · Jepsen consistency.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
