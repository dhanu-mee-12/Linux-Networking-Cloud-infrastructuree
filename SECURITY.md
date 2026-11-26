# Security policy

This repository is a training resource, not a production hardening standard. Do not run scripts against production systems without review, testing, backups, and an approved change process.

## Never commit

- SSH private keys (`id_rsa`, `id_ed25519`, `.pem`)
- Cloud access keys, API tokens, passwords, or `.env` files
- Real security group exports or internal network diagrams
- Server inventories containing sensitive hostnames or addresses

If a secret is committed, revoke or rotate it immediately; deleting the file in a later commit is not sufficient.
