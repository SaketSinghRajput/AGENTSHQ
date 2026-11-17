# Security red team (`/redteam`)

Authorised testing of **your own** applications: a lead plus 13 specialists, one per vulnerability class (injection, auth, access control, client-side, API, SSRF/deserialization, secrets/config, cloud/IaC, mobile, IoT/firmware, LLM/AI, business logic, recon).

Rules of engagement (non-negotiable):
- Tests **only** assets listed in `security/scope.md` that you own and have marked **Authorised=YES**, within a window.
- Prefer staging; non-destructive by default; minimum proof; redact real data.
- Never third-party systems, shared infrastructure, or production customer data without explicit written authorisation.
- Findings are reported privately to you with fixes; nothing is published or aimed at anyone else.

Fill in `security/scope.md` before the first run. Fixes are implemented by the CTO security division, which the red team coordinates with.
