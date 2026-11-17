---
name: ops-intake
description: "COO procedure to classify an operations request into a scenario (O1-O10), measure the current state, staff the team and create the plan. Use at the start of every operations task."
---

# Ops Intake

1. Ask at most 3 questions only if missing: which venture, desired outcome with a number, deadline/constraints.
2. Capture current state: volumes, cycle times, costs, failure points (ask for data, don't guess).
3. Classify scenario(s); staff only needed roles.
4. Create `ops/<slug>/PLAN.md`: outcome metric, current baseline, team, milestones, risks, first 5 tasks with owners. Add a row to `ops/STATUS.md`.

| ID | Scenario | Examples | Core team | Key deliverables |
|---|---|---|---|---|
| O1 | Hardware supply chain & manufacturing | DRISHTI / Zupra pilot batch, EMS partner, component shortages | supply-chain-manager, strategic-sourcing-specialist, manufacturing-operations-engineer, quality-assurance-manager, logistics-inventory-manager | sourcing plan with alternates, EMS RFQ & comparison, NPI/pilot build plan, incoming-inspection & FQC plan, inventory policy |
| O2 | Device deployment & field operations | Zupra screens in shops, DRISHTI in fleets, drone field trials | field-operations-manager, logistics-inventory-manager, customer-success-manager, quality-assurance-manager, business-continuity-risk-manager | site survey checklist, install SOP, technician kit, maintenance schedule, RMA flow, safety plan |
| O3 | Customer onboarding & support operations | SWAFTO shopkeepers, app users, B2B clients | customer-support-ops-manager, customer-success-manager, business-process-engineer, automation-ops-engineer, ops-analyst | support tiers & SLAs, WhatsApp/helpdesk setup, macros in Hindi/Odia/English, onboarding playbook, CSAT/NPS loop |
| O4 | Process design, SOPs & automation | internal workflows across ventures | business-process-engineer, automation-ops-engineer, ops-analyst | process maps (as-is/to-be), SOPs, RACI, automations with owners, KPI dashboard |
| O5 | People operations & hiring | interns, first employees, contractors, campus hiring | people-ops-hr-manager, talent-acquisition-specialist, chief-of-staff | role scorecards, hiring pipeline, interview kits, onboarding checklist, policies (leave, POSH, code of conduct) |
| O6 | Vendor, partner & contract operations | EMS, logistics, cloud, agencies, channel partners | vendor-partner-manager, contracts-operations-coordinator, strategic-sourcing-specialist | vendor scorecards, SLA tracker, contract register with renewal alerts, partner playbooks |
| O7 | Regulatory, certification & licences | BIS CRS, WPC ETA, TEC MTCTE, DGCA drone rules, Shop & Establishment, trade licences | regulatory-certification-manager, quality-assurance-manager, contracts-operations-coordinator | applicability matrix, certification roadmap with labs/costs/timelines, licence register with renewals |
| O8 | Operating cadence for multiple ventures | OKRs, weekly reviews, resource allocation across Zupra/SWAFTO/Allure/DRISHTI | chief-of-staff, ops-analyst, program-delivery-manager | company OKRs, weekly business review, decision log, resource/capacity map |
| O9 | Program & project delivery | competitions (NIDAR), client projects, government tenders, grant milestones | program-delivery-manager, chief-of-staff, regulatory-certification-manager, vendor-partner-manager | integrated master schedule, RAID log, milestone tracker, delivery reports |
| O10 | IT, admin & business continuity | laptops, accounts, backups, office/lab, incidents | it-admin-ops-manager, business-continuity-risk-manager, people-ops-hr-manager | asset register, joiner/mover/leaver access checklist, backup plan, BCP & incident runbooks |

> Guardrails: plans, drafts and analysis only. Never place orders or POs, sign or accept contracts, pay, hire/fire or make offers, contact vendors/candidates/customers/government, or submit applications without Saket's explicit approval. Regulations, labour laws and certification rules change: verify against the official source and date; flag legal questions for a lawyer.
