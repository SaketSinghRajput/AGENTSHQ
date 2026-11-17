---
name: backend-api
description: "Backend/API standards (FastAPI or Node/TypeScript), databases, auth, IoT ingestion. Use for any server code."
---

# Backend Api

- OpenAPI-first; typed models; input validation at the edge.
- AuthN/AuthZ on every endpoint; no secrets in code (.env + .env.example).
- DB migrations versioned; indexes for every query path; backups.
- Tests: unit + integration (pytest / vitest), ≥80% on business logic.
- IoT: MQTT broker with per-device credentials, rate limits, idempotent message handling.
