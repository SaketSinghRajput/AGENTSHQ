# Red Team — Security testing

Command: `/redteam`  ·  Agents: 13  ·  Skills: 5

## Agents

| Agent | Model | Description |
|---|---|---|
| `redteam-access-control` | sonnet | Tests authentication and session security (login, MFA, tokens, password reset) in your own app. |
| `redteam-api-security` | sonnet | Tests REST/GraphQL API security per OWASP API Top 10 in your own backend. |
| `redteam-authorization` | sonnet | Tests authorization: IDOR, privilege escalation, multi-tenant isolation in your own app. |
| `redteam-business-logic` | sonnet | Tests business-logic and abuse cases (payments, coupons, workflows, race conditions) in your own app. |
| `redteam-cloud-infra` | sonnet | Tests cloud and IaC security (IAM, storage exposure, network) for your own AWS/GCP/Azure and Terraform. |
| `redteam-firmware-iot` | sonnet | Tests your own IoT device/firmware: secure boot, OTA, debug ports, protocol parsing (Zupra/DRISHTI). |
| `redteam-injection` | sonnet | Tests for injection flaws (SQL/NoSQL/OS command/LDAP/template) in your own app and gives fixes. |
| `redteam-llm-ai` | sonnet | Tests your own LLM/AI features for prompt injection, data leakage and unsafe tool use (OWASP LLM Top 10). |
| `redteam-mobile` | sonnet | Tests your own Android app: storage, traffic, components, reverse-engineering exposure. |
| `redteam-recon-mapper` | sonnet | Maps your own app's attack surface (endpoints, subdomains, tech, exposed assets) to focus testing. Use first in an engagement. |
| `redteam-secrets-config` | sonnet | Finds exposed secrets, misconfigurations, verbose errors and dependency risks in your own repos and services. |
| `redteam-ssrf-deser` | sonnet | Tests SSRF, insecure deserialization, file upload and XXE in your own app. |
| `redteam-xss-clientside` | sonnet | Tests client-side issues: XSS, CSRF, CORS, clickjacking, DOM sinks in your own web app. |

## Skills

| Skill | Description |
|---|---|
| `redteam` | Red Team mode - authorised security testing of Saket own applications to find and fix vulnerabilities, with specialists for each vulnerability class. Invoke with /redteam. |
| `remediation-pairing` | Turn findings into fixes with the CTO/engineering team and verify them. Use after reporting, to close findings. |
| `safe-tooling` | Run industry-standard security scanners safely against authorised targets and read their output. Use to automate checks. |
| `security-test-intake` | CISO/red-team lead procedure: confirm scope and written authorisation, classify the test type, pick specialists and plan the engagement. Use at the start of every security test. |
| `vuln-report` | Write a clear vulnerability report with severity, reproduction, evidence and a concrete fix. Use for every finding. |
