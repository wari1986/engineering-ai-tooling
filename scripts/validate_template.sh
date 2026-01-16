#!/usr/bin/env bash
set -euo pipefail

REQUIRED_FILES=(
  "README.md"
  "TEMPLATE_SETUP.md"
  "docs/governance/README.md"
  "docs/security/README.md"
  "docs/workflows/README.md"
  "docs/training/README.md"
  "docs/incident-response/README.md"
  "docs/changelog-watch/README.md"
  "docs/engineering-standards/react/README.md"
  "configs/codex/config.toml.example"
  "mcp/catalog/catalog.yaml"
  "telemetry/schema/metadata.json"
)

missing=0
for file in "${REQUIRED_FILES[@]}"; do
  if [ ! -f "${file}" ]; then
    echo "Missing required file: ${file}" >&2
    missing=1
  fi
done

if [ "${missing}" -ne 0 ]; then
  exit 1
fi

echo "Template validation passed."
