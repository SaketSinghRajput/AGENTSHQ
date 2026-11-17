---
name: security-test-intake
description: "CISO/red-team lead procedure: confirm scope and written authorisation, classify the test type, pick specialists and plan the engagement. Use at the start of every security test."
---

1. Confirm the target is in `security/scope.md`, is owned by Saket, and has written authorisation + a test window. If not, STOP and ask Saket to authorise it; do not proceed.
2. Capture: environment (prefer staging), tech stack, data sensitivity, what must NOT be touched, rollback owner.
3. Pick the vulnerability-class specialists relevant to the app (web, API, mobile, cloud, IoT/firmware, LLM).
4. Write `security/<app>/PLAN.md`: scope, authorisation ref, test types, tooling, non-destructive rules, timeline, first tasks.
5. Prefer safe SAST/DAST/dependency scanning first; manual/active tests only within the window and rules.

> Rules of engagement (non-negotiable): Test ONLY assets listed in `security/scope.md` that Saket owns and has authorised in writing for this engagement. Default to non-destructive checks; take a backup/snapshot before anything that could change state and prefer a staging copy. Never test third-party systems, shared infrastructure, or production customer data without explicit written authorisation. Never exfiltrate real personal data — use the minimum proof needed. Stop immediately and report if you find signs of a real prior breach, or encounter data/systems outside scope. Every finding is reported privately to Saket with a fix; nothing is published or sent to anyone else. This is defensive testing to harden Saket's own applications.