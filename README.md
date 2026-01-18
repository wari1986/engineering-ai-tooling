# Engineering AI Tooling Template

This repository is a **GitHub template** for building an organization-wide, auditable source of truth for AI governance and adoption. It provides:

- A documentation system for governance, security, workflows, training, incident response, and changelog monitoring.
- Complete Codex and Claude configuration packs (agents, rules, skills, config examples, MCP catalog and policies).
- Reusable GitHub Actions workflow templates for product repos.
- Bootstrap/update scripts to sync org-managed configuration into developer `~/.codex` and `~/.claude` safely.
- A “taste layer” for engineering standards, starting with React best practices.
- Adoption examples for common stacks (Next/Node + Python/Flask).

> **No org identifiers, secrets, or telemetry backends are included.** Use placeholders like `ORG_NAME`, `GITHUB_ORG`, and `SECURITY_OWNER` throughout.

## Quick start

1. Click **Use this template** on GitHub to create your org-owned copy.
2. Complete the checklist in [TEMPLATE_SETUP.md](TEMPLATE_SETUP.md).
3. Wire the reusable workflows into product repos using the examples in [docs/adoption-examples](docs/adoption-examples).
4. Publish this repo as the single source of truth for AI governance and adoption.

## Repository map

- `docs/` – Governance, security, workflows, training, incident response, rollout, and changelog watch loop.
- `configs/codex/` – Codex configuration pack (agents, rules, skills, config example).
- `configs/claude/` – Claude configuration pack (settings, skills, hooks).
- `CLAUDE.md` – Repository-level instructions for Claude Code.
- `mcp/` – MCP catalog, server templates, and policies.
- `automation/github/` – Reusable workflow examples and issue/PR templates.
- `scripts/` – Bootstrap, update, and validation scripts.
- `telemetry/` – Metadata-only telemetry guidance and schemas.

## Policy and compliance

- See [docs/governance/README.md](docs/governance/README.md) for governance principles, ownership, and change control.
- See [docs/security/README.md](docs/security/README.md) for security requirements and threat boundaries.
- See [docs/incident-response/README.md](docs/incident-response/README.md) for incident handling.

## Codex configuration pack

The Codex pack lives in `configs/codex/` and includes:

- `config.toml.example` – Copy/paste-ready base configuration.
- `rules/*.rules` – Organization-specific rules to guide behavior.
- `skills/` – Skill scaffolding templates for repeatable tasks.
- `agents/` – `AGENTS.md` templates to drop into repos.

## Claude configuration pack

The Claude pack lives in `configs/claude/` and includes:

- `settings/` – Global and project settings templates.
- `skills/` – Short, task-scoped skills that reference standards in `docs/`.
- `hooks/` – Pre-run and post-run hooks for governance and auditing.

## Bootstrap/update mechanism

Scripts in `scripts/` provide a safe, optional mechanism to sync org-managed config into `~/.codex`. See [scripts/README.md](scripts/README.md).

## Telemetry policy

This template **does not collect prompt or code content**. Telemetry is metadata-only; see [telemetry/README.md](telemetry/README.md) for guidance and placeholder schemas.

## Contributing

Use pull requests and keep changes aligned to the governance change control process.
