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
  "docs/incident-response/claude-code-troubleshooting.md"
  "docs/changelog-watch/README.md"
  "docs/engineering-standards/react/README.md"
  "configs/codex/config.toml.example"
  "configs/codex/README.md"
  "configs/codex/.ai/openai/AGENTS.md"
  "configs/codex/.ai/openai/context.md"
  "configs/codex/.ai/openai/ARCHITECTURE.md"
  "configs/codex/.ai/openai/DECISIONS.md"
  "configs/claude/CLAUDE.md.template"
  "configs/claude/.ai/claude/context.md"
  "configs/claude/.ai/claude/ARCHITECTURE.md"
  "configs/claude/.ai/claude/DECISIONS.md"
  "configs/claude/.claude/rules/components.md"
  "configs/claude/README.md"
  "configs/claude/settings/global-settings.example.json"
  "configs/claude/settings/project-settings.example.json"
  "configs/claude/settings/mcp.project.example.json"
  "configs/claude/hooks/pre-run.example.sh"
  "configs/claude/hooks/post-run.example.sh"
  "scripts/bootstrap_claude.sh"
  "scripts/update_claude.sh"
  "mcp/catalog/catalog.yaml"
  "telemetry/schema/metadata.json"
  "CLAUDE.md"
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
