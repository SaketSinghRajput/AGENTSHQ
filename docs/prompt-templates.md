# AgentHQ Prompt Templates

How to use: type the command, then fill the `[brackets]`. The more specific the **Goal**, **Context** and **Output** lines are, the better the result. Delete any line you don't need.

---

## Universal template (works with every command)

```
/[command] [one-line request]

Goal: [what outcome you want, with a number if possible]
Venture: [Zupra / SWAFTO / Allure / DRISHTI / NIDAR / other]
Context: [facts, current status, links or file paths]
Constraints: [budget ₹, deadline, team size, tools, must-use / must-avoid]
Output: [plan / doc / table / code / draft email / checklist] saved to [folder/file]
Approval: stop and ask me before [spending / sending / deploying / filing]
```

**Useful follow-ups in any mode**

- `Status report` — summary of the current status
- `Red-team this` — argue against the plan and look for weaknesses
- `Show me the options with trade-offs before deciding`
- `What do you need from me?`
- `Exit [CTO] mode`

---

## /hq — Front desk (routes to the right leader)

```
/hq [describe the problem in plain words]
```

Examples:
- `/hq a vendor hasn't paid us ₹2 lakh for 4 months`
- `/hq I want to hire 2 interns for SWAFTO Android app`
- `/hq should I take a government tender for smart bus stops?`

---

## /ceo — Strategy, focus, fundraising, big decisions

```
/ceo [decision or question]

Decision needed: [what I must decide] by [date]
Options I see: [A / B / C]
What matters most: [cash, speed, learning, college time, impact]
Data available: [traction numbers, runway, team]
Output: decision memo + red-team + recommendation
```

Examples:
- `/ceo Which 2 of my ventures should I focus on for the next 6 months? Current status: [..]`
- `/ceo Run the weekly company review and tell me the 5 decisions I need to make`
- `/ceo Evaluate this new idea before I spend time on it: [idea]`
- `/ceo Plan my week: college exams on [dates], NIDAR deadline [date], investor call [date]`
- `/ceo Should I raise a pre-seed now or wait 6 months? Runway is [x] months`

---

## /cto — Engineering: hardware, chips, software, AI/ML, security

```
/cto [build / fix / design request]

Product: [what it is, who uses it]
Scenario hint: [IoT device / edge-AI / chip-FPGA / ML model / SaaS / Android / drone / research / agents]
Current state: [repo path, hardware on hand, what works, what's broken]
Requirements: [features, performance, power, cost per unit, latency]
Constraints: [board: ESP32-S3 / Jetson / STM32 …, cloud: AWS free tier …, deadline]
Output: [research brief / PRD / architecture / code / test report]
Gates: stop at [PRD / architecture] for my approval
```

Examples:
- `/cto Build DRISHTI V1: driver drowsiness detection on [board] at ≥15 FPS, alert in <300 ms`
- `/cto Design architecture for Zupra ad screens: 500 devices, remote content updates, offline playback`
- `/cto Write and verify a UART + SPI IP in Verilog with cocotb tests and Yosys synthesis`
- `/cto Security review of SWAFTO backend before launch`
- `/cto Research swarm coordination approaches for NIDAR 4-drone search and rescue`

---

## /cpo — Product: discovery, roadmap, specs, design

```
/cpo [product question]

Product: [name] for [users]
Problem we believe exists: [..]
Evidence so far: [interviews, data, feedback]
Output: [research plan / opportunity tree / PRD / roadmap / wireframes / metrics]
```

Examples:
- `/cpo Plan 10 user interviews with kirana shopkeepers for SWAFTO and give me the interview guide in Hindi + English`
- `/cpo Build a now/next/later roadmap for SWAFTO for next quarter`
- `/cpo Write a PRD for daily cash-closing summary on WhatsApp`
- `/cpo Define the north-star metric and tracking plan for Allure`

---

## /cdo — Data & AI: data platform, dashboards, AI use cases

```
/cdo [data or AI request]

Use case: [what decision or task this improves]
Data sources: [apps, devices, sheets, exports]
Success measure: [accuracy, time saved, cost]
Output: [use-case portfolio / data architecture / dashboard spec / AI PoC plan / eval suite / AI policy]
```

Examples:
- `/cdo List the top 5 AI use cases across my ventures ranked by value and effort`
- `/cdo Design a cheap data stack to collect Zupra device telemetry and show uptime dashboards`
- `/cdo Build an evaluation plan for a WhatsApp support bot for SWAFTO`
- `/cdo Write an AI usage policy for my team`

---

## /cmo — Marketing, brand, content, growth, PR

```
/cmo [campaign or marketing request]

Product/venture: [..]
Target customer: [who, where, language]
Objective: [one number, e.g. 200 sign-ups in 60 days]
Budget: ₹[..]   Timeline: [..]
Channels I'm open to: [WhatsApp, Instagram, LinkedIn, Google, offline, events]
Output: [positioning / campaign plan / content calendar / ad drafts / launch plan]
```

Examples:
- `/cmo Launch SWAFTO to kirana stores in Bhubaneswar, ₹20,000 budget, 60 days`
- `/cmo Build my founder brand on LinkedIn: 90-day content plan + first 5 posts`
- `/cmo Positioning and messaging for Zupra for mall and shop owners`
- `/cmo Write the story for our NIDAR / Vishwakarma Awards submission`

---

## /cro — Sales: pipeline, deals, tenders, partners

```
/cro [sales request]

Product: [..]   Buyer: [role, company type, city]
Deal size: ₹[..]   Sales cycle: [..]
Current pipeline: [leads, stage]
Output: [ICP / scripts / proposal / pricing / tender bid / CRM setup / forecast]
```

Examples:
- `/cro Create ICP, call script (Hindi/Odia/English) and objection handling for selling SWAFTO to shopkeepers`
- `/cro Write a pilot proposal for DRISHTI to a logistics fleet of 50 trucks`
- `/cro Find suitable GeM / state tenders for [product] and do a bid/no-bid`
- `/cro Design a reseller programme for Zupra screens`

---

## /cfo — Finance, tax, compliance, runway, fundraising numbers

```
/cfo [finance request]

Entity/venture: [..]   Period: [month / FY]
Data I can give: [bank CSV, Tally/Zoho export, invoices — file path]
Output: [books summary / compliance calendar / budget / runway / model / cap table / grant list]
Note: drafts for my CA/CS to review
```

Examples:
- `/cfo What are my company's compliance deadlines for the next 90 days?`
- `/cfo Calculate burn and runway from this bank statement: [path]`
- `/cfo Unit economics for Zupra: screen cost ₹[..], ad revenue ₹[..]/month`
- `/cfo Which government grants and schemes am I eligible for right now?`
- `/cfo Build a cap table and show dilution for raising ₹[..] at ₹[..] pre-money`

---

## /coo — Operations, supply chain, support, vendors, certifications

```
/coo [operations request]

Venture: [..]
Current process / baseline: [volumes, times, problems]
Target: [number + date]
Output: [SOP / supply plan / vendor comparison / certification roadmap / support setup / OKRs]
```

Examples:
- `/coo Plan a 50-unit pilot build of DRISHTI: parts sourcing, EMS options, QC, timeline`
- `/coo What certifications (BIS/WPC/TEC) does Zupra's screen need and the cost/timeline?`
- `/coo Set up WhatsApp customer support for SWAFTO with SLAs and replies in 3 languages`
- `/coo Create quarterly OKRs and a weekly review rhythm across all my ventures`

---

## /chro — HR: hiring, pay, performance, culture, compliance

```
/chro [people request]

Role/people: [..]   Headcount now: [..]
Budget: ₹[..]   Location/remote: [..]
Output: [hiring plan / JD + scorecard / interview kit / policy / handbook / review system]
```

Examples:
- `/chro Hire 2 Android interns for SWAFTO: JD, scorecard, interview questions, stipend range`
- `/chro Write an employee handbook for a 5-person startup in Odisha`
- `/chro What HR compliance do I need under the new Labour Codes at [x] employees?`
- `/chro Set up POSH policy and Internal Committee steps for when we reach 10 people`

---

## /gc — Legal: contracts, IP, privacy, corporate, disputes

```
/gc [legal question or document]

Situation: [facts, dates, amounts, parties (no sensitive IDs)]
Document: [file path, or paste the clause]
What I need: [explanation / risk review / redline / draft / checklist / questions for my lawyer]
```

Examples:
- `/gc Review this vendor agreement and flag risky clauses: [path]`
- `/gc Draft an NDA and a founder agreement checklist for my co-founder discussion`
- `/gc Can I patent DRISHTI's detection method? Give me an IP strategy`
- `/gc What do I need to comply with the DPDP Act for SWAFTO's customer data?`
- `/gc A client hasn't paid ₹[..] for [x] months. What are my options?`

---

## /agency — Client services: pitches, SOWs, delivery, profitability

```
/agency [client work request]

Client: [industry, size]   Service: [website / app / IoT solution / marketing]
Budget: ₹[..]   Timeline: [..]
Output: [qualification / proposal / SOW / estimate / project plan / status report / rate card]
```

Examples:
- `/agency Write a proposal + SOW for a restaurant website with online ordering, budget ₹60k`
- `/agency Estimate an Android app for a coaching institute with good/better/best options`
- `/agency Create a rate card and margin model for my agency`
- `/agency Turn our web development work into 3 fixed-price packages`

---

## Combining leaders

Use `/ceo` when a task crosses functions, for example:

```
/ceo Launch SWAFTO in 60 days. Involve product, tech, marketing, sales, finance and ops.
Give me one integrated plan with owners, budget and the decisions I need to make.
```

---

## Self-improving agents and smart task splitting (works with every command)

**Splitting a task across specialists and workers**

```
/[command] [goal]
Split this into a task tree in TASKS.md, assign specialists, and use workers by complexity:
C0 local model for trivial parts, Haiku for simple, Sonnet for standard, Opus for complex,
and verify anything important before integrating.
```

**Making the agents better**

- `/evolve`: review agent memories and usage, then propose skill upgrades for you to approve
- `/evolve cfo`: focus the review on one team
- `Remember for next time: [preference or lesson]`: the agent saves it to its memory
- `Do a retro on this session and log it`

**Saving money and keeping data private**

- `Use the local model for the summarising parts`
- `Keep this confidential: local model or Claude only`

---

## /redteam — Authorised security testing of your OWN apps

First add the target to `security/scope.md` (owned by you, Authorised=YES, a staging URL if possible).

```
/redteam [which of my apps to test]

Target: [app name] at [staging URL / repo path]  (must be in security/scope.md, mine, authorised)
Type: [web / API / mobile / cloud+IaC / IoT-firmware / LLM / pre-launch full sweep]
Environment: [staging preferred]   Window: [when]
Do NOT touch: [production, real customer data, ...]
Output: findings with severity + fixes in security/<app>/findings.md; retest after fixes
```

Examples:
- `/redteam Full pre-launch sweep of SWAFTO backend on staging, then give me fixes ranked by severity`
- `/redteam Test my Allure web app for injection, access-control and XSS`
- `/redteam API security test of SWAFTO's REST API (OWASP API Top 10)`
- `/redteam Check my Android APK for insecure storage and secrets`
- `/redteam Review my Terraform and AWS IAM for misconfigurations`
- `/redteam Test my support chatbot for prompt injection and data leakage`
- `/redteam Add Semgrep, Gitleaks and Trivy scans to my CI (secure-SDLC setup)`

Note: this team tests only assets you own and have authorised; it reports privately to you with fixes, nothing is published or aimed at anyone else.

---

## Live dashboard

Opens by itself at **http://127.0.0.1:4765/** the moment any team starts working, and shows every active sub-agent, what it's doing, how long it's run, and recent completions. Refreshes every 2 seconds; private to your machine.

- Open it manually any time: run `python "%USERPROFILE%\.claude\agenthq\dashboard_server.py"` then visit the address.
- It didn't open? Make sure the install step (`set-core-settings.ps1`, run by `Install-All-Teams.bat`) finished, and that Python is on PATH.

---

## /qa — Break the app (QA & Reliability)

```
/qa [what to test]
App: [name] on [staging URL / repo]   Environment: staging preferred
Pillars: [chaos/fault-injection · load 1000+ · human-error · concurrency · real-device · usability · negative/boundary · API]
Phone: [attached? for real-device testing]
Output: failure catalog + findings by severity + fixes + Go/No-Go
```
Examples:
- `/qa build the failure catalog for SWAFTO, then run human-error and concurrency tests on staging and test it on my phone`
- `/qa load-test the backend to 1000 concurrent users and find the first bottleneck`
- `/qa chaos-test resilience: inject DB and dependency failures on staging`

## /panel — Customer verdict (persona panel)

```
/panel [idea and/or app to test]
Target customer: [who]   App: [path/URL/screenshots, optional]
Output: idea verdict + app verdict (to the CEO), champion vs not-for segment, must-fix list
```
Examples:
- `/panel test the SWAFTO idea and the staging app with shopkeeper and adjacent personas`
- `/panel compare these two onboarding designs across the panel`

## /sharks — Investor panel + raise roadmap

```
/sharks [venture + stage]
Idea: [one line]   Stage: [pre-seed/seed/A]   Sector: [..]   Traction: [real numbers]
Want: [panel verdict / raise roadmap / both]
Output: idea + strategy verdict (to the CEO), best-fit investor type, valuation read, step-by-step roadmap to the first check
```
Examples:
- `/sharks judge the Zupra idea and strategy at seed, then build my roadmap to a ₹2Cr raise`
- `/sharks mock partner meeting: grill me with the toughest sharks and list the questions I must prep`

Note: sharks are simulated archetypes, not real investors; verdicts are stress-tests, not offers. Figures are dated — re-verify; securities/tax/FEMA go to a CA/CS/lawyer.
