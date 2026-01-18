# AI governance

## Purpose

Define organization-wide governance for AI tooling, including ownership, change control, and policy lifecycle.

## Ownership

- **AI governance owner:** `AI_GOVERNANCE_OWNER`
- **Security owner:** `SECURITY_OWNER`
- **Privacy owner:** `DATA_PRIVACY_OWNER`

## Policy scope

- Applies to all AI-assisted engineering workflows.
- Applies to all product repositories integrating Codex configurations or MCP servers.
- Requires metadata-only telemetry (no prompt/code content).
 - Applies to Claude Code usage and settings where deployed.

## Change control

1. Propose changes via pull request.
2. Required approvals: AI governance owner + security owner.
3. Update changelog watch loop after merging.

## Claude Code governance notes

- Claude Code settings and hooks must follow the same change control as Codex.
- Repository-level instructions live in `CLAUDE.md`.

## Evidence and audit

Maintain:

- Signed-off PRs in this repo.
- Release notes in `docs/changelog-watch/README.md`.
- Decision records in `docs/workflows/decision-records.md`.
