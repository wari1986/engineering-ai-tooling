# Scripts

These scripts are optional utilities to distribute and validate the Codex configuration pack.

## Scripts

- `bootstrap_codex.sh` – Initialize `~/.codex` with org-managed configuration.
- `update_codex.sh` – Update existing `~/.codex` with the latest org-managed configuration.
- `validate_template.sh` – Validate this repo for required files and placeholders.

## Safety

- Scripts use a **copy + backup** strategy; no destructive deletes by default.
- Adjust the distribution URL or git ref placeholders before use.
