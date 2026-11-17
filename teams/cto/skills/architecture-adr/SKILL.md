---
name: architecture-adr
description: "System architecture docs and Architecture Decision Records. Use before building anything with more than one component."
---

# Architecture Adr

`docs/architecture/<system>.md`: context diagram, block diagram (mermaid), interfaces/protocols, data flow, budgets (power, latency, BOM cost, cloud cost/month), failure modes, scaling plan.
Each major choice gets `docs/adr/NNN-<title>.md`: Context · Options (≥2) · Decision · Consequences.
End with a work breakdown: component → owner agent → estimate.
Hand the design to security-architect for threat modeling before the gate.
