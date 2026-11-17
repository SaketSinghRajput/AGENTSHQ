---
name: threat-modeling
description: "STRIDE threat modeling for systems spanning device, cloud, app and AI. Use at architecture stage and for every major change."
---

# Threat Modeling

1. Data-flow diagram with trust boundaries (device↔cloud↔app↔third parties).
2. STRIDE per element: Spoofing, Tampering, Repudiation, Information disclosure, DoS, Elevation of privilege.
3. Rate each threat (likelihood × impact), map to mitigations and owners.
4. Output `docs/security/threat-model-<system>.md`; re-run on major changes.
