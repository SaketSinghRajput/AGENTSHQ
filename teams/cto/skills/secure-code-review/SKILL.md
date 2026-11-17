---
name: secure-code-review
description: "Secure code review against OWASP Top 10 / ASVS with SAST, secrets and dependency scanning. Use before merging and at alpha."
---

# Secure Code Review

- Tools (run if installed): `semgrep --config auto`, `gitleaks detect`, `pip-audit` / `npm audit`, `trivy fs .`.
- Manual: authz on every route, injection, SSRF, deserialization, file upload, crypto misuse, logging of secrets.
- Report: severity, file:line, exploit scenario, fix, test to prevent regression.
