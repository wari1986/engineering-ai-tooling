# Codex configuration pack

This folder provides Codex templates and rules aligned with the unified `.ai/` layout.

## Layout

- `.ai/openai/` – Codex entrypoint and supporting docs.
  - `AGENTS.md` with boot sequence.
  - `ARCHITECTURE.md`, `DECISIONS.md`, `context.md`.
  - `agents/` module-scoped guides.
  - `runbooks/session-runbook.md`.
  - `tasks/README.md` and `tasks/_template.md`.
- `rules/` – Codex rule files.
- `skills/` – Codex skills templates.
- `config.toml.example` – Example Codex config.

## Discovery model

- Codex entrypoint is `.ai/openai/AGENTS.md`.
- `AGENTS.md` defines an explicit boot sequence and area-specific guide loading.
