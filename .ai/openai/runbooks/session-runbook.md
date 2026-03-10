# Session Runbook

## Pre-flight checklist

- Confirm environment and branch state.
- Verify required tooling is installed.
- Review active task brief before edits.

## Troubleshooting workflow

1. Reproduce the issue.
2. Verify local environment and config.
3. Consult architecture, decisions, and module guides.
4. Isolate root cause before patching.

## Validation and readiness

- Run lint/test/build checks relevant to touched areas.
- Verify docs/templates remain internally consistent.
- Capture validation notes for PR.

## Safety notes

- Avoid destructive operations without backups.
- Keep placeholders and remove secrets from examples.
