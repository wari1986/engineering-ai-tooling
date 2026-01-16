# Adoption example: Python + Flask

## Goals

- Use Codex config pack.
- Apply reusable GitHub Actions workflows.
- Enforce governance policies.

## Steps

1. Add Codex config pack to repo:

```bash
mkdir -p .codex
cp -R /path/to/org-template/configs/codex/* .codex/
```

2. Add `AGENTS.md` template:

```bash
cp /path/to/org-template/configs/codex/agents/AGENTS.md.backend.template AGENTS.md
```

3. Reference reusable workflows:

```yaml
# .github/workflows/ai-governance.yml
name: AI Governance
on:
  pull_request:
jobs:
  governance:
    uses: GITHUB_ORG/engineering-ai-tooling/.github/workflows/governance-check.yml@main
    with:
      codex_config_path: .codex/config.toml
```

4. Add metadata-only telemetry guidance:

- Follow `telemetry/README.md` in this repo.

## Optional: Flask-specific checks

- Add unit tests, lint, and security checks (bandit, pip-audit) in your product workflows.
