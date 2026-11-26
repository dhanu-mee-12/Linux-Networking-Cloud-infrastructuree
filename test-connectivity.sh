#!/usr/bin/env bash
set -Eeuo pipefail

HOST="${1:-}"
if [[ -z "$HOST" ]]; then
  echo "Usage: $0 <host-or-ip> [ssh-port] [http-port]" >&2
  exit 2
fi
SSH_PORT="${2:-22}"
HTTP_PORT="${3:-80}"

command -v nc >/dev/null 2>&1 || { echo "Install netcat-openbsd first." >&2; exit 1; }

echo "== DNS/host resolution =="
getent hosts "$HOST" || true

echo "== SSH port $SSH_PORT =="
nc -vz -w 5 "$HOST" "$SSH_PORT"

echo "== HTTP port $HTTP_PORT =="
nc -vz -w 5 "$HOST" "$HTTP_PORT"

if command -v curl >/dev/null 2>&1 && [[ "$HTTP_PORT" == "80" ]]; then
  echo "== HTTP headers =="
  curl --fail --max-time 10 -I "http://$HOST"
fi
