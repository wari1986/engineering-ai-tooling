#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(pwd)/configs/codex"
TARGET_DIR="${HOME}/.codex"
BACKUP_DIR="${TARGET_DIR}.backup.$(date +%Y%m%d%H%M%S)"

if [ ! -d "${SOURCE_DIR}" ]; then
  echo "Source Codex config directory not found: ${SOURCE_DIR}" >&2
  exit 1
fi

if [ ! -d "${TARGET_DIR}" ]; then
  echo "Target ${TARGET_DIR} does not exist. Run bootstrap_codex.sh first." >&2
  exit 1
fi

echo "Backing up ${TARGET_DIR} to ${BACKUP_DIR}"
cp -R "${TARGET_DIR}" "${BACKUP_DIR}"

cp -R "${SOURCE_DIR}/"* "${TARGET_DIR}/"

echo "Codex config updated in ${TARGET_DIR}"
