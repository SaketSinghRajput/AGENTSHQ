# Security testing scope & authorisation

Only assets listed here, owned by Saket and marked Authorised=YES, may be tested.

| Asset (app / repo / domain / device) | Environment | Owner | Authorised (YES/NO) | Window | Must NOT touch |
|---|---|---|---|---|---|
| example: SWAFTO backend (staging) | staging.swafto.local | Saket | NO | | production DB, real customer data |

Rules: prefer staging; non-destructive; no real personal data in proofs; stop on anything out of scope.
