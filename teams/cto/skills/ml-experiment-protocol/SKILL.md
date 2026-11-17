---
name: ml-experiment-protocol
description: "Reproducible ML/DL experiments: baselines, tracking, evaluation, edge quantization. Use for any model training."
---

# Ml Experiment Protocol

- Env via `uv` or conda, pinned versions, fixed seeds, data version hash.
- Always start with a simple baseline. Track runs (MLflow or `ml/<proj>/results.md`).
- Report: metric ± CI over ≥3 seeds, confusion/failure cases, data slices (lighting, skin tone, device, language).
- Edge targets: export ONNX/TFLite/TensorRT, int8 accuracy delta, latency & RAM on target hardware.
- Write a model card: intended use, limits, training data, eval, ethical risks.
