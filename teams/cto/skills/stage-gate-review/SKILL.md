---
name: stage-gate-review
description: "Run a stage gate (PRD, Architecture, Alpha, Beta, Release) with evidence and a go/no-go. Use before moving a project to the next stage."
---

# Stage Gate Review

For the gate being reviewed, collect evidence and write `projects/<slug>/gates/<gate>.md`:
- **Entry criteria met?** list each with evidence link (file, test output, log).
- **Open risks** with owner and mitigation.
- **Security sign-off** from security-architect (mandatory for Architecture, Alpha, Release).
- **Decision**: GO / GO-WITH-CONDITIONS / NO-GO. Founder approval required for PRD, Architecture, Beta, Release.
Never mark GO on claims without evidence.
