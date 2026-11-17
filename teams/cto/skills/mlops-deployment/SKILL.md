---
name: mlops-deployment
description: "Package, serve, monitor and version models (FastAPI, Ollama/vLLM, Docker, MLflow). Use when a model goes to production or a device."
---

# Mlops Deployment

- Model registry with version, metrics, data hash. Container image per model.
- CI eval gate: block deploy if metrics regress beyond threshold.
- Serving: health checks, timeouts, batching, GPU/CPU fallbacks.
- Monitoring: latency, error rate, input drift, output drift; rollback plan.
