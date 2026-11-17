# CTO — Engineering

Command: `/cto`  ·  Agents: 32  ·  Skills: 35

## Agents

| Agent | Model | Description |
|---|---|---|
| `ai-security-engineer` | sonnet | AI/LLM security: prompt injection, poisoning, data leakage, OWASP LLM Top 10. Use for ML/LLM features. |
| `android-engineer` | sonnet | Kotlin/Compose Android apps, offline-first, BLE. Use for Android. |
| `appsec-engineer` | sonnet | Application security: OWASP review, SAST, secrets and dependency scans. Use before merge and at alpha. |
| `backend-engineer` | sonnet | APIs, databases, auth, IoT ingestion. Use for server code. |
| `beta-program-manager` | sonnet | Beta and field trials, feedback triage, go/no-go. Use after alpha. |
| `chip-architect` | opus | Chip/IP micro-architecture, register maps, PPA targets. Use before any RTL. |
| `cloud-security-engineer` | sonnet | Cloud/IaC security: IAM, network, secrets, logging, misconfig scans. Use for any cloud setup. |
| `code-simplicity-gatekeeper` | sonnet | Reviews every coding request BEFORE work starts (why is it needed, what's the smallest change) to stop over-engineering, and cleans finished code to be small, DRY and readable. Use before any agent writes code and for refactors. |
| `cto` | opus | Chief Technology Officer. Default main-session agent - plans, staffs, delegates, reviews and reports to the founder. |
| `data-engineer` | sonnet | Datasets, pipelines, labeling, data contracts. Use for data collection and preparation. |
| `design-verification-engineer` | sonnet | cocotb/Verilator testbenches, assertions, coverage, SymbiYosys formal. Use to verify RTL. |
| `devops-sre-engineer` | sonnet | Terraform, CI/CD, Docker/Kubernetes, cloud, reliability and cost. Use for infra and pipelines. |
| `embedded-firmware-engineer` | sonnet | Firmware for ESP32/STM32/RP2040/Arduino: drivers, RTOS, comms, OTA. Use for any microcontroller code. |
| `firmware-hardware-security-engineer` | sonnet | Device and silicon security: secure boot, signed OTA, debug lockdown, key storage, RTL trust. Use for devices and chips. |
| `frontend-engineer` | sonnet | React/Next.js web apps and dashboards. Use for web UI. |
| `hil-test-engineer` | sonnet | Hardware-in-the-loop, bench, environmental and soak tests. Use for devices. |
| `llm-applications-engineer` | sonnet | RAG, tool-using agents, prompts, evals; Claude API and Ollama. Use for LLM features and agent systems. |
| `ml-research-engineer` | opus | Designs and trains ML/DL models, evaluation, edge quantization. Use for any model. |
| `mlops-engineer` | sonnet | Model packaging, serving, CI eval gates, monitoring. Use when a model ships. |
| `pcb-hardware-engineer` | sonnet | Schematics, PCB layout review, BOM, power and DFM in KiCad. Use for any board. |
| `physical-design-engineer` | sonnet | OpenLane 2/OpenROAD RTL-to-GDSII, STA, DRC/LVS, DFT basics, FPGA builds. Use for implementation. |
| `privacy-compliance-officer` | sonnet | DPDP Act / GDPR privacy, consent, retention, and device certifications (BIS/WPC/TEC/CE/FCC). Use when personal data or certification is involved. |
| `product-manager` | sonnet | PRDs, user stories, acceptance criteria, scope and release plans. Use after research, before architecture. |
| `program-manager` | sonnet | Delivery and schedule tracking across projects: task breakdown, dependencies, risks, STATUS.md. Use to plan sprints or check progress. |
| `qa-test-engineer` | sonnet | Alpha testing: automated tests, regression, bug reports, sign-off. Use when features are code-complete. |
| `research-scientist` | opus | Literature, patents, datasheets, standards, competitor and market research with citations. Use first for any new idea. |
| `robotics-engineer` | sonnet | ROS 2, PX4/ArduPilot, drones, rovers, swarms, SITL simulation. Use for robotics and autonomy. |
| `rtl-design-engineer` | sonnet | Synthesizable Verilog/SystemVerilog, lint and Yosys synthesis. Use to implement RTL. |
| `security-architect` | opus | Head of security: threat models, security requirements, security sign-off at every gate. Use at architecture and before release. |
| `system-architect` | opus | End-to-end architecture across device, firmware, cloud, ML and apps; ADRs and work breakdown. Use before building. |
| `tech-writer` | haiku | READMEs, API docs, datasheets, manuals, release notes. Use for documentation. |
| `ux-designer` | sonnet | User flows, wireframes, UX copy for web, app and device UIs. Use for any user-facing interface. |

## Skills

| Skill | Description |
|---|---|
| `ai-security` | AI/LLM security: OWASP LLM Top 10, prompt injection, data poisoning, model theft, privacy leakage. Use for any ML or LLM feature. |
| `android-app` | Android standards: Kotlin, Jetpack Compose, MVVM, offline-first, BLE. Use for any Android work. |
| `architecture-adr` | System architecture docs and Architecture Decision Records. Use before building anything with more than one component. |
| `asic-physical-flow` | Open-source RTL-to-GDSII with OpenLane 2/OpenROAD on Sky130/GF180, STA and DFT basics. Use for physical implementation. |
| `backend-api` | Backend/API standards (FastAPI or Node/TypeScript), databases, auth, IoT ingestion. Use for any server code. |
| `beta-program` | Run beta tests with real users or field deployments and triage feedback. Use after alpha sign-off. |
| `chip-architecture-spec` | Write a chip/IP micro-architecture spec and register map. Use before any RTL. |
| `cloud-security` | Cloud and IaC security baseline: IAM, network, secrets, logging. Use for any cloud environment. |
| `cto` | Activate CTO mode - Claude becomes the CTO of Saket's deep-tech company, plans projects, staffs and delegates to the 30 specialist agents, runs stage gates and reports status. Invoke with /cto. |
| `data-engineering` | Data pipelines, datasets, labeling and data contracts. Use for collecting, cleaning or versioning data. |
| `design-verification` | Chip/FPGA verification with cocotb, Verilator/Icarus, assertions, coverage and SymbiYosys formal. Use to verify any RTL. |
| `devops-iac` | Infrastructure as code, CI/CD, containers and cost control. Use for cloud, pipelines and environments. |
| `embedded-firmware` | Embedded firmware standards for ESP32/STM32/RP2040/Arduino with PlatformIO, FreeRTOS, drivers and comms. Use for any firmware work. |
| `firmware-hardware-security` | Embedded and silicon security: secure boot, signed OTA, debug lockdown, key storage, side channels, RTL trust. Use for devices and chips. |
| `hil-testing` | Hardware-in-the-loop and bench testing for devices. Use for firmware/hardware verification. |
| `llm-app-engineering` | Build LLM apps: RAG, tool-using agents, prompts, evals, guardrails; works with Claude API and Ollama. Use for any LLM feature. |
| `minimal-code` | Gate every change before coding (justify why it's needed and find the smallest change), and review finished code to make it small, clean and DRY. Use before any agent writes code and after code is written. |
| `ml-experiment-protocol` | Reproducible ML/DL experiments: baselines, tracking, evaluation, edge quantization. Use for any model training. |
| `mlops-deployment` | Package, serve, monitor and version models (FastAPI, Ollama/vLLM, Docker, MLflow). Use when a model goes to production or a device. |
| `pcb-design-review` | Schematic/PCB review, BOM and DFM using KiCad CLI. Use for any board design. |
| `pentest-rules` | Rules of engagement for security testing of the company's OWN systems. Use before any active security testing. |
| `prd-writing` | Write a product requirements document with user stories and testable acceptance criteria. Use for any new product or feature. |
| `privacy-compliance-india` | Privacy and regulatory compliance for Indian products: DPDP Act 2023, consent, data retention, plus device certification (BIS, WPC, TEC) and GDPR when selling abroad. Use when personal data or certification is involved. |
| `project-intake` | CTO procedure to classify a new idea into a project scenario (S1-S9), pick the team, and create the project plan. Use at the start of every new project. |
| `research-brief` | Produce a cited research brief: prior art, papers, datasheets, competitors, patents, standards. Use for any 'research X' or new-idea exploration. |
| `robotics-autonomy` | ROS 2 / PX4 / ArduPilot development with simulation-first testing. Use for drones, rovers, swarms. |
| `rtl-design` | Synthesizable Verilog/SystemVerilog coding standards, lint and synthesis with Yosys. Use for any RTL. |
| `secure-code-review` | Secure code review against OWASP Top 10 / ASVS with SAST, secrets and dependency scanning. Use before merging and at alpha. |
| `stage-gate-review` | Run a stage gate (PRD, Architecture, Alpha, Beta, Release) with evidence and a go/no-go. Use before moving a project to the next stage. |
| `status-reporting` | Write the CTO's status report for the founder. Use when asked for status, standup, or at the end of a work session. |
| `tech-docs` | Technical documentation: READMEs, API docs, datasheets, manuals, release notes. Use for any docs deliverable. |
| `test-strategy` | Alpha testing: test pyramid, regression suites, bug reports and sign-off. Use when a feature is code-complete. |
| `threat-modeling` | STRIDE threat modeling for systems spanning device, cloud, app and AI. Use at architecture stage and for every major change. |
| `ux-design` | Design user flows, wireframes (as markdown/mermaid/HTML), and UX copy. Use for screens, apps, dashboards. |
| `web-frontend` | Web frontend standards: React/Next.js, TypeScript, Tailwind, accessibility, performance. Use for any web UI. |
