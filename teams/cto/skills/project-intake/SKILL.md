---
name: project-intake
description: "CTO procedure to classify a new idea into a project scenario (S1-S9), pick the team, and create the project plan. Use at the start of every new project."
---

# Project Intake

## Steps
1. Ask the founder at most 3 questions only if missing: goal, deadline, budget/hardware on hand.
2. Classify into one or more scenarios (see table). Hybrids are normal (e.g. S2 = S1 + S4).
3. Staff the project from the scenario's team list; drop roles that add nothing.
4. Create `projects/<slug>/` with `PLAN.md`: scenario, team, stage gates, deliverables, risks, first 5 tasks with owners.
5. Add a row to `docs/STATUS.md`.

## Scenario matrix
| ID | Scenario | Examples | Core team | Key deliverables |
|---|---|---|---|---|
| S1 | Connected IoT device | Zupra ad-screens, smart meters, asset trackers | research-scientist, product-manager, system-architect, embedded-firmware-engineer, pcb-hardware-engineer, backend-engineer, frontend-engineer, android-engineer, devops-sre-engineer, hil-test-engineer, qa-test-engineer, firmware-hardware-security-engineer, cloud-security-engineer, privacy-compliance-officer, beta-program-manager, tech-writer | PRD, block diagram, schematic+BOM, firmware, OTA, cloud API, dashboard, app, HIL report, certification plan (BIS/WPC/CE/FCC) |
| S2 | Edge-AI device | DRISHTI driver monitoring, smart cameras, predictive maintenance | S1 team + ml-research-engineer, data-engineer, mlops-engineer, ai-security-engineer | dataset card, model card, quantized model with on-device latency/accuracy, power budget, field-test report |
| S3 | Custom chip / FPGA IP | accelerators, RISC-V SoC blocks, sensor interface IP, TinyTapeout-style shuttles | research-scientist, chip-architect, rtl-design-engineer, design-verification-engineer, physical-design-engineer, firmware-hardware-security-engineer, tech-writer | micro-architecture spec, register map, lint-clean RTL, cocotb+formal sign-off, synthesis/STA report, GDSII or FPGA bitstream, datasheet |
| S4 | AI/ML model or LLM product | vision models, forecasting, RAG assistants, fine-tuned LLMs, AI business analyser | research-scientist, product-manager, data-engineer, ml-research-engineer, llm-applications-engineer, mlops-engineer, backend-engineer, ai-security-engineer, privacy-compliance-officer, qa-test-engineer | data contract, baseline, eval suite, model card, serving API, red-team report, monitoring |
| S5 | SaaS / web platform | SWAFTO back-office, Allure interiors platform, dashboards | product-manager, ux-designer, system-architect, backend-engineer, frontend-engineer, devops-sre-engineer, appsec-engineer, cloud-security-engineer, privacy-compliance-officer, qa-test-engineer, beta-program-manager, tech-writer | PRD, UX flows, API spec, web app, CI/CD, threat model, load test, beta report |
| S6 | Android / mobile app | SWAFTO shop app, BLE companion apps | product-manager, ux-designer, android-engineer, backend-engineer, appsec-engineer, qa-test-engineer, beta-program-manager | UX flows, Kotlin/Compose app, offline sync, Play Store listing, crash-free-rate target |
| S7 | Robotics / drones / autonomy | NIDAR RescueSwarm, rovers, swarms | research-scientist, system-architect, robotics-engineer, embedded-firmware-engineer, pcb-hardware-engineer, ml-research-engineer, hil-test-engineer, firmware-hardware-security-engineer, qa-test-engineer | concept of operations, ROS 2/PX4 stack, SITL simulation results, failsafe matrix, flight/field test logs |
| S8 | Research paper / R&D prototype | CR3BP paper, novel algorithms, competition submissions | research-scientist, ml-research-engineer or domain engineer, tech-writer | literature review, reproducible experiments, figures, LaTeX draft, submission checklist |
| S9 | Internal automation / agent systems | Hermes multi-agent OS, ops bots, data pipelines | system-architect, llm-applications-engineer, backend-engineer, devops-sre-engineer, ai-security-engineer, appsec-engineer | workflow spec, agent/tool design, evals, guardrails, runbook |
