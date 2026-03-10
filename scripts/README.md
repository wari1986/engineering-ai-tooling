# Scripts

These scripts are optional utilities to distribute and validate the Codex configuration pack.
These scripts can also distribute the Claude configuration pack.

## Scripts

- `bootstrap_codex.sh` – Initialize `~/.codex` with org-managed configuration.
- `update_codex.sh` – Update existing `~/.codex` with the latest org-managed configuration.
- `bootstrap_claude.sh` – Initialize `~/.claude` with org-managed configuration.
- `update_claude.sh` – Update existing `~/.claude` with the latest org-managed configuration.
- `validate_template.sh` – Validate this repository for required files and placeholders.

## Safety

- Scripts use a **copy + backup** strategy; no destructive deletes by default.
- Adjust the distribution URL or git ref placeholders before use.


## Unified `.ai/` note

The bootstrap/update scripts copy hidden directories (for example `.ai/` and `.claude/`) so agent templates preserve their expected layout.
