# AI security baseline

## Goals

- Prevent data exfiltration or leakage of sensitive content.
- Ensure only approved MCP servers are used.
- Maintain metadata-only telemetry.

## Owners

- **Security owner:** `SECURITY_OWNER`
- **Incident contact:** `INCIDENT_EMAIL`

## Requirements

1. **No prompt or code content telemetry.** Only capture metadata listed in `telemetry/schema/metadata.json`.
2. **Approved MCP servers only.** See `mcp/catalog/catalog.yaml`.
3. **Secrets handling.** Do not include secrets in configs or rules. Use placeholders.
4. **Change control.** Security owner approval required for any changes under `mcp/`, `configs/codex/`, or `configs/claude/`.

## Threat boundaries

- This repo provides policy, configuration, and workflow templates only.
- Product repos must enforce data classification and secrets scanning.

## Security review cadence

- Quarterly review of policies, rules, and MCP catalog.

## Claude Code guidance

See `docs/security/claude-code.md` for Claude-specific data usage, memory, and permissions guidance.
