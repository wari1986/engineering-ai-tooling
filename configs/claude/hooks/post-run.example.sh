#!/usr/bin/env bash
set -euo pipefail

# Example: append a simple metadata-only audit entry.
if [ -n "${CLAUDE_SESSION_ID:-}" ]; then
  echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) session=${CLAUDE_SESSION_ID} repo=$(pwd)" >> .claude/hooks/audit.log
fi
