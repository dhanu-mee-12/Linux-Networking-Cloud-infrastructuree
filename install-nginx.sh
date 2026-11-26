#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  echo "Run with sudo: sudo bash scripts/install-nginx.sh" >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y nginx curl
systemctl enable --now nginx
nginx -t
systemctl is-active --quiet nginx
echo "Nginx is installed and active. Test with: curl -I http://127.0.0.1"
