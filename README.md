# Engineering AI Tooling Template

This repository is a **GitHub template** for building an organization-wide, auditable source of truth for AI governance and adoption.

## Quick start

1. Click **Use this template** on GitHub to create your org-owned copy.
2. Complete the checklist in [TEMPLATE_SETUP.md](TEMPLATE_SETUP.md).
3. Wire reusable workflows into product repos with [docs/adoption-examples](docs/adoption-examples).
4. Publish this repo as the single source of truth for AI governance and adoption.

## Repository map

- `docs/` – Governance, security, workflows, training, incident response, rollout, and changelog watch.
- `configs/codex/` – Codex pack, including `.ai/openai/` templates.
- `configs/claude/` – Claude pack, including `.ai/claude/`, `CLAUDE.md.template`, and `.claude/rules/` templates.
- `.ai/` – Canonical cross-agent configuration pattern for this repository.
- `CLAUDE.md` – Claude Code root entrypoint (always loaded by Claude Code).
- `.claude/rules/` – Path-scoped Claude rules with YAML frontmatter.
- `mcp/` – MCP catalog, server templates, and policies.
- `automation/github/` – Reusable workflow examples and issue/PR templates.
- `scripts/` – Bootstrap, update, and validation scripts.
- `telemetry/` – Metadata-only telemetry guidance and schemas.

## Unified AI configuration model

Use `.ai/` as the single source of truth for AI configuration in any product repo:

- `.ai/openai/` is the Codex area. Entry point: `.ai/openai/AGENTS.md` with an explicit boot sequence.
- `.ai/claude/` is the Claude supplemental area. Entry point remains root `CLAUDE.md`.
- `CLAUDE.md` should `@.ai/claude/context.md` and **reference** (not import) `.ai/claude/ARCHITECTURE.md` and `.ai/claude/DECISIONS.md`.
- `.claude/rules/*.md` provide additive path-scoped rules for module-specific guidance.

## Policy and compliance

- See [docs/governance/README.md](docs/governance/README.md).
- See [docs/security/README.md](docs/security/README.md).
- See [docs/incident-response/README.md](docs/incident-response/README.md).

## Telemetry policy

This template **does not collect prompt or code content**. Telemetry is metadata-only; see [telemetry/README.md](telemetry/README.md).
