---
name: api-abuse-testing
description: "Abuse-case testing of REST/GraphQL APIs: malformed/oversized/out-of-contract requests, pagination abuse, IDOR, mass assignment and replayed webhooks. Use for API robustness and logic testing."
---

# Api Abuse Testing

Fire: **missing/extra/malformed fields** (required absent; extra field must be ignored or 400, never trusted; malformed JSON/wrong types); **wrong content-type** (text/plain or form to a JSON endpoint; `application/xml` → XXE); **oversized payload** (multi-MB body, deeply nested JSON / billion-laughs, huge array → verify size limit + 413); **pagination abuse** (`limit=100000`, `limit=-1`, offset past end, `page=0`, cursor tampering, deep pagination as DoS); **enumeration/IDOR** (`/orders/1001`→`1002`, sequential IDs → expect 403/404, not another user's object); **mass assignment** (`{"role":"admin","verified":true,"balance":99999}` → allow-list bindable fields); **method tampering** (PUT/DELETE where only GET expected, missing auth on one verb); **negative/zero amounts** to payment endpoints; **replayed webhooks** without signature/event-ID dedupe (→ one state change only).


Sources: ISTQB boundary value analysis · OWASP WSTG business-logic & data-validation · Fowler, Optimistic Offline Lock · HTTP optimistic locking (ETag/If-Match) · Jepsen consistency.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
