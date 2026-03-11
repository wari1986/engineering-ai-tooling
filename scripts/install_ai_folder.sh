#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: ./scripts/install_ai_folder.sh /path/to/target/repo

Copies the unified AI configuration into a target repository:
- .ai/
- .claude/rules/
- CLAUDE.md

Behavior:
- Existing targets are backed up with a timestamp suffix before overwrite.
- Intended for product repositories (for example Next.js repos).
USAGE
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ "$#" -ne 1 ]]; then
  usage >&2
  exit 1
fi

TARGET_REPO="$1"
if [[ ! -d "$TARGET_REPO" ]]; then
  echo "Target repository does not exist: $TARGET_REPO" >&2
  exit 1
fi

if [[ ! -d "$TARGET_REPO/.git" ]]; then
  echo "Warning: $TARGET_REPO does not look like a git repository (.git not found)." >&2
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"

backup_if_exists() {
  local target_path="$1"
  if [[ -e "$target_path" ]]; then
    local backup_path="${target_path}.backup-${TIMESTAMP}"
    mv "$target_path" "$backup_path"
    echo "Backed up $target_path -> $backup_path"
  fi
}

mkdir -p "$TARGET_REPO/.claude"

backup_if_exists "$TARGET_REPO/.ai"
backup_if_exists "$TARGET_REPO/.claude/rules"
backup_if_exists "$TARGET_REPO/CLAUDE.md"

cp -R "$ROOT_DIR/.ai" "$TARGET_REPO/.ai"
cp -R "$ROOT_DIR/.claude/rules" "$TARGET_REPO/.claude/rules"
cp "$ROOT_DIR/CLAUDE.md" "$TARGET_REPO/CLAUDE.md"

echo "Installed unified AI configuration into: $TARGET_REPO"
echo "Next steps:"
echo "1) Customize placeholders and module rules."
echo "2) Fill .ai/openai/ARCHITECTURE.md and .ai/claude/ARCHITECTURE.md for your stack."
echo "3) Add stack-specific details (e.g., Next.js, RHF, TSQ, axios) under .ai/openai/agents/ and .claude/rules/."
