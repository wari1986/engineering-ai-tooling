# Repository Guidelines

## Project Structure & Module Organization
- `docs/` holds governance, security, workflows, training, incident response, and changelog watch guidance.
- `configs/codex/` contains the Codex configuration pack (agents, rules, skills, `config.toml.example`).
- `automation/github/` provides reusable workflow and template examples.
- `mcp/` includes the MCP catalog, server templates, and policies.
- `scripts/` ships bootstrap/update/validation utilities for org-managed config.
- `telemetry/` documents metadata-only telemetry guidance and schemas.

## Build, Test, and Development Commands
- `./scripts/validate_template.sh` verifies required files and placeholders are present.
- `./scripts/bootstrap_codex.sh` copies `configs/codex/` into `~/.codex` with a backup.
- `./scripts/update_codex.sh` refreshes an existing `~/.codex` from this repo.

## Coding Style & Naming Conventions
- Shell scripts use bash with `set -euo pipefail`; keep changes consistent with existing style.
- Markdown is the primary format; keep headings structured and paragraphs short.
- Use placeholder names (e.g., `ORG_NAME`, `GITHUB_ORG`, `SECURITY_OWNER`) until an org-specific rollout.

## Testing Guidelines
- There is no automated test suite in this template repo.
- Run `./scripts/validate_template.sh` before submitting changes that touch required files.
- When adding new required assets, update `scripts/validate_template.sh` accordingly.

## Commit & Pull Request Guidelines
- Commit messages in this repo are short, imperative summaries (e.g., "Add AI governance template structure").
- Use pull requests for changes and align updates with the governance change control process.
- PRs should include a brief summary, affected paths (e.g., `docs/governance/`), and validation notes.

## Security & Configuration Tips
- Do not add org identifiers, secrets, or telemetry backends; keep placeholders intact.
- Prefer metadata-only telemetry; see `telemetry/README.md` for schema guidance.
