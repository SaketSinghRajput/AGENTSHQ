---
name: safe-tooling
description: "Run industry-standard security scanners safely against authorised targets and read their output. Use to automate checks."
---

Prefer these (install if missing), always against in-scope targets only, rate-limited:
- SAST / secrets / deps: `semgrep --config auto`, `gitleaks detect`, `pip-audit`, `npm audit`, `osv-scanner`, `trivy fs/image/config`.
- Web/API DAST: OWASP ZAP (baseline/`zap-baseline.py`), `nikto`, `nuclei` (own templates), `sqlmap` only on your own app with `--batch` and no data dump beyond proof.
- Recon on your own domains: `nmap` (polite timing), TLS check (`testssl.sh`).
- Mobile: `mobsf` static scan of your own APK.
Capture outputs under `security/<app>/scans/`. Triage false positives; never point tools at hosts you don't own.

> Rules of engagement (non-negotiable): Test ONLY assets listed in `security/scope.md` that Saket owns and has authorised in writing for this engagement. Default to non-destructive checks; take a backup/snapshot before anything that could change state and prefer a staging copy. Never test third-party systems, shared infrastructure, or production customer data without explicit written authorisation. Never exfiltrate real personal data — use the minimum proof needed. Stop immediately and report if you find signs of a real prior breach, or encounter data/systems outside scope. Every finding is reported privately to Saket with a fix; nothing is published or sent to anyone else. This is defensive testing to harden Saket's own applications.