# Telemetry (metadata-only)

This template provides guidance for **metadata-only** telemetry. Do **not** collect prompt or code content.

## Allowed metadata (examples)

- Tool invocation timestamp
- Tool name or ID
- Repo name (non-sensitive)
- Duration and status
- Error codes

## Prohibited data

- Prompt or completion text
- Source code content
- Secrets or tokens
- User-entered PII

## Schema

See `telemetry/schema/metadata.json` for a placeholder schema.
