# Claude Code security and data usage

## Purpose

Provide Claude Code-specific security guidance aligned with this repository's governance and telemetry policies.

## Data privacy and telemetry

- Do not send prompt or code content to telemetry systems.
- Keep telemetry metadata-only (see `telemetry/schema/metadata.json`).
- If telemetry is enabled, document scope and owners in a change-controlled PR.

## Memory management

- Treat memory as sensitive state; document when it is enabled and what it may store.
- Use explicit opt-in for memory in project settings and review regularly.
- Do not store secrets in memory or instructions.

## Permissions and sandboxing

- Use `permissions.allow`/`permissions.deny` in settings to block sensitive files (e.g., `.env`, `secrets/**`).
- Prefer sandboxed execution with a minimal allow list.
- Deny external network access by default unless explicitly approved.

## MCP access

- Only use MCP servers approved in `mcp/catalog/catalog.yaml`.
- Keep project MCP configuration in `.mcp.json` under change control.

## Hooks and automation

- Hooks must be non-destructive and metadata-only.
- Use pre-run hooks for secret checks and post-run hooks for audit logging.

## References

- https://code.claude.com/docs/en/settings
- https://code.claude.com/docs/en/memory
- https://code.claude.com/docs/en/security
