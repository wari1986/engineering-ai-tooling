#!/usr/bin/env bash
set -euo pipefail

# Example: block runs when secret files are present in the working tree.
if [ -f .env ] || [ -d secrets ]; then
  echo "Refusing to run: .env or secrets directory detected." >&2
  exit 1
fi
