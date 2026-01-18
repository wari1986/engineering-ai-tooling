# Claude configuration pack

This folder is the org-managed configuration pack for Claude Code. Keep it minimal and auditable.

## Layout

- `settings/` – Templates for global and project settings.
- `skills/` – Short, task-scoped skills for common workflows.
- `hooks/` – Pre-run and post-run hooks for governance and auditing.

## Settings guidance

Create templates for:

- Global defaults (model selection, context limits).
- Project overrides (allowed tools, repo-specific policies).

Store templates in `settings/` and document how to apply them in onboarding.
Claude Code settings files live at `~/.claude/settings.json` (user),
`.claude/settings.json` (project), and `.claude/settings.local.json` (local).

Project MCP configuration lives in `.mcp.json`. See
`configs/claude/settings/mcp.project.example.json` for a starter template.

Reference docs:

- https://code.claude.com/docs/en/settings
- https://code.claude.com/docs/en/hooks

## Skills guidance

Skills should be short, explicit, and task-scoped. Keep long-form guidance in `docs/` and reference it from skills.

## Hooks guidance

Use hooks for non-destructive checks (e.g., secret scanning, policy reminders) and metadata-only logging.

## MCP alignment

If you add MCP servers or tools for Claude, record them in `mcp/` so governance and approvals stay centralized.
