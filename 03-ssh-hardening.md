# Lab 03 — SSH keys and secure access

## Generate a key on your client

```bash
ssh-keygen -t ed25519 -C "infra-lab" -f ~/.ssh/infra_lab_ed25519
ssh-copy-id -i ~/.ssh/infra_lab_ed25519.pub <user>@<server-ip>
ssh -i ~/.ssh/infra_lab_ed25519 <user>@<server-ip>
```

Use a passphrase. Keep the private key on your client and never copy it to the server or commit it.

## Safe hardening sequence

1. Confirm key-based login works in a **second** terminal.
2. Back up the SSH configuration.
3. Apply only the settings appropriate for your environment.
4. Validate syntax before restarting.

```bash
sudo cp -a /etc/ssh/sshd_config /etc/ssh/sshd_config.bak.$(date +%Y%m%d-%H%M%S)
sudoedit /etc/ssh/sshd_config
sudo sshd -t
sudo systemctl reload ssh
```

Recommended settings after key login is verified:

```text
PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no
MaxAuthTries 3
```

Ubuntu may use `/etc/ssh/sshd_config.d/*.conf`; check the effective configuration with `sudo sshd -T`.

## Recovery note

Do not disable password authentication until key login succeeds. If you lose access, use the VM console or provider recovery console rather than repeatedly guessing SSH settings.
