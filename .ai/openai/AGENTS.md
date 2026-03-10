# OpenAI Codex Session Entry

Use this file as the Codex entry point for this repository.

## Boot sequence (read in order at session start)

1. `./.ai/openai/context.md`
2. `./.ai/openai/ARCHITECTURE.md`
3. `./.ai/openai/DECISIONS.md`
4. `./.ai/openai/runbooks/session-runbook.md`
5. `./.ai/openai/tasks/README.md`

## Area-specific guides

When touching a module, load the corresponding guide in `./.ai/openai/agents/`:

- `components.md`
- `services.md`
- `packages.md`
- `stores.md`
- `pages-api.md`

## Operating rules

- Keep placeholders (`ORG_NAME`, `GITHUB_ORG`, `SECURITY_OWNER`) until org rollout.
- Keep telemetry metadata-only. Do not capture prompt or code content.
- Use task briefs in `./.ai/openai/tasks/` for multi-session work.
