# Lab 07 — Capstone validation checklist

Record evidence in `docs/capstone-notes.md` locally; do not commit sensitive values.

## VM and Linux

- [ ] Ubuntu LTS VM created from a trusted image.
- [ ] Non-root sudo user exists.
- [ ] System packages updated.
- [ ] Hostname and time are correct.
- [ ] Nginx is enabled and active.

## Access security

- [ ] SSH key login succeeds in a fresh terminal.
- [ ] Private key has restrictive permissions (`chmod 600`).
- [ ] Direct root SSH login is disabled.
- [ ] Password SSH login is disabled only after key verification.
- [ ] A backup of SSH configuration exists.

## Network security

- [ ] Security group allows SSH only from your administration IP.
- [ ] Security group allows HTTP/HTTPS only as intended.
- [ ] UFW default incoming policy is deny.
- [ ] UFW has an explicit SSH allow rule before enablement.
- [ ] No unnecessary listening ports are exposed.

## Connectivity evidence

```bash
# Client-side
ssh -i ~/.ssh/infra_lab_ed25519 <user>@<server-ip> 'hostname && systemctl is-active nginx'
curl -I --max-time 5 http://<server-ip>

# Server-side
ip -br address
ip route
sudo ss -lntup
sudo ufw status verbose
sudo systemctl --failed
```

## Completion statement

Write a short summary: what you deployed, which ports are exposed, how SSH is secured, and how you diagnosed one connectivity issue.
