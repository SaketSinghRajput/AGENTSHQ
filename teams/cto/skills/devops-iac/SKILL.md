---
name: devops-iac
description: "Infrastructure as code, CI/CD, containers and cost control. Use for cloud, pipelines and environments."
---

# Devops Iac

- Terraform only; `terraform fmt/validate/plan` in CI; plan shown to founder before apply.
- GitHub Actions: lint → test → build → scan → deploy (staging auto, prod manual).
- Containers minimal, non-root, pinned digests.
- Free tiers first; monthly cost estimate for anything provisioned; budget alerts.
- Never run `terraform apply`, deploy to prod, or delete resources without founder approval.
