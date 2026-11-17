---
name: test-strategy
description: "Alpha testing: test pyramid, regression suites, bug reports and sign-off. Use when a feature is code-complete."
---

# Test Strategy

- Map every PRD acceptance criterion to ≥1 automated test.
- Pyramid: unit > integration > end-to-end. Add regression test for every bug fixed.
- Bug format in `docs/qa/bugs.md`: id, severity (S1-S4), steps, expected, actual, evidence.
- Alpha sign-off `projects/<slug>/gates/alpha.md`: all S1/S2 closed, suite green, coverage numbers.
