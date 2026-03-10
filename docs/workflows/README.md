# AI workflows

This section describes how teams should integrate AI tooling into product repos.

## Standard workflow

1. Install unified AI config scaffolding:
   - `.ai/openai/` for Codex.
   - `.ai/claude/` for Claude supplemental context.
   - Root `CLAUDE.md` and `.claude/rules/` for Claude Code.
2. For Codex, start sessions from `.ai/openai/AGENTS.md` boot sequence.
3. For Claude, load root `CLAUDE.md`, import `@.ai/claude/context.md`, and apply matching `.claude/rules/*` files.
4. Reference reusable workflows from `automation/github/workflows/`.
5. Follow security and governance requirements.

## Decision records

Use lightweight decision records when adopting new AI capabilities.

- Template: `docs/workflows/decision-records.md`

## Review checklist

- Security approval for MCP changes.
- Governance approval for new rules.
- Metadata-only telemetry alignment.
