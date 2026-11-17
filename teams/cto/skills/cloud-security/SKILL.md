---
name: cloud-security
description: "Cloud and IaC security baseline: IAM, network, secrets, logging. Use for any cloud environment."
---

# Cloud Security

- `checkov -d infra/` / `trivy config infra/`.
- Least-privilege IAM, no wildcard policies, MFA on root, no long-lived keys in CI (use OIDC).
- Private subnets for data, encryption at rest/in transit, secrets in a manager, audit logs on.
- Public exposure review of every bucket/endpoint.
