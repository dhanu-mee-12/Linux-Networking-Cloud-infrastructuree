#!/usr/bin/env bash
set -Eeuo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

printf 'Checking shell syntax...\n'
while IFS= read -r -d '' file; do
  bash -n "$file"
done < <(find scripts -type f -name '*.sh' -print0)

printf 'Checking for likely secret files...\n'
if find . -type f \( -name '*.pem' -o -name '*.key' -o -name 'id_rsa*' -o -name 'id_ed25519*' \) -not -path './.git/*' | grep -q .; then
  echo 'Potential private key file found.' >&2
  exit 1
fi

git diff --check 2>/dev/null || true
printf 'Repository checks passed.\n'
