# Claude Code troubleshooting

Use this guide to triage Claude Code CLI and integration issues quickly.

## Common issues

### Permission denied or blocked tool use

Symptoms: tool prompts are blocked or denied unexpectedly.

Checks:
- Review `.claude/settings.json` and `.claude/settings.local.json` for `permissions.deny` rules.
- Confirm the command matches the allow/deny patterns.
- Verify the intended scope (project vs user) is correct.

### Hook failures

Symptoms: runs fail immediately or return non-zero exit codes.

Checks:
- Inspect hook scripts in `.claude/hooks/`.
- Confirm hook paths in `.claude/settings.json` are valid.
- Re-run hooks locally to capture stderr output.

### MCP server unavailable

Symptoms: `/mcp` shows server offline or requests fail.

Checks:
- Validate `.mcp.json` entries and credentials.
- Confirm the server is in `mcp/catalog/catalog.yaml`.
- Verify network access and auth headers.

### Config changes not applied

Symptoms: settings changes appear ignored.

Checks:
- Confirm file location: `~/.claude/settings.json` (user) vs `.claude/settings.json` (project).
- Ensure no higher-precedence scope overrides the setting.
- Restart Claude Code after major changes.

## Escalation

If the issue persists:
- Capture the exact error message and configuration scope.
- Notify `SECURITY_OWNER` and file an incident report if data exposure is suspected.

## References

- https://code.claude.com/docs/en/settings
- https://code.claude.com/docs/en/hooks
- https://code.claude.com/docs/en/mcp
- https://code.claude.com/docs/en/cli-reference
