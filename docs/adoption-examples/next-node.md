# Adoption example: Next.js + Node

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
cp /path/to/org-template/configs/codex/agents/AGENTS.md.frontend.template AGENTS.md
```

3. Reference reusable workflows:

```yaml
# .github/workflows/ai-governance.yml
name: AI Governance
on:
  pull_request:
jobs:
  governance:
    uses: GITHUB_ORG/AI_TOOLING_REPO/.github/workflows/governance-check.yml@main
    with:
      codex_config_path: .codex/config.toml
```

4. Add metadata-only telemetry guidance:

- Follow `telemetry/README.md` in your governance repository.

## Optional: Node API checks

- Add linting, unit tests, and security scans to your product workflows.
