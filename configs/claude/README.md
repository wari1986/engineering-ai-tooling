# Claude configuration pack

This folder provides template assets for repositories using Claude Code.

## Layout

- `CLAUDE.md.template` – Root entrypoint template (always loaded by Claude Code).
- `.ai/claude/` – Supplemental Claude docs (context, architecture, decisions, runbooks, tasks).
- `.claude/rules/` – Path-scoped additive rules with YAML `paths` frontmatter.
- `settings/` – Global and project settings templates.
- `skills/` – Task-scoped skills.
- `hooks/` – Pre-run and post-run automation examples.

## Discovery model

- Claude always loads root `CLAUDE.md`.
- `CLAUDE.md` should import `@.ai/claude/context.md` each session.
- `ARCHITECTURE.md` and `DECISIONS.md` should be referenced on demand, not imported each session.
- `.claude/rules/*.md` load automatically when edited paths match their frontmatter.

## Authoring guidelines

- Keep `CLAUDE.md` under 200 lines.
- Keep module rules additive; avoid duplicating global instructions from `CLAUDE.md`.
- Use placeholders instead of org-specific identifiers.
