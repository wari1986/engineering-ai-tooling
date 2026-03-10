# Decision Log (ADR)

## ADR-001 — Use unified `.ai/` with agent subdirectories (YYYY-MM-DD)

### Decision

Use `.ai/openai/` and `.ai/claude/` to organize agent configuration, with root `CLAUDE.md` and `.claude/rules/` for Claude-specific loading requirements.

### Context

Teams use multiple agents. A consistent, discoverable location for agent config reduces duplication and onboarding friction.

### Consequences

- Shared mental model for AI configuration.
- Cleaner separation between global context and path-scoped rules.
- Requires maintaining both imported and referenced docs for Claude sessions.
