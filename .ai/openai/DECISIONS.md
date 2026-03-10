# Decision Log (ADR)

## ADR-001 — Use `.ai/` as the single AI configuration root (YYYY-MM-DD)

### Decision

Store agent-specific configuration under `.ai/<agent>/` and keep `CLAUDE.md` at repo root for Claude Code compatibility.

### Context

Multiple AI agents are used across teams. A shared root keeps config discoverable while preserving each tool's required entry points.

### Consequences

- Standardized repo layout across teams.
- Lower onboarding friction for mixed-agent workflows.
- Need to maintain both root `CLAUDE.md` and `.claude/rules/` for Claude Code.
