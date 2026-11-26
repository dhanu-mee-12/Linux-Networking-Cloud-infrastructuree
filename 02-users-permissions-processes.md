# Lab 02 — Users, permissions, processes, and services

## Exercises

```bash
# Inspect identity and groups
whoami
id
getent group sudo

# Create a lab group and user (requires sudo; choose a disposable VM)
sudo groupadd --force infra-lab
sudo useradd --create-home --shell /bin/bash --groups infra-lab labuser
sudo passwd --lock labuser

# Practice ownership and modes
sudo install -o labuser -g infra-lab -m 0640 /dev/null /var/tmp/infra-lab.conf
ls -l /var/tmp/infra-lab.conf

# Observe processes and services
ps aux --sort=-%mem | head
systemctl --type=service --state=running | head -20
systemctl status ssh --no-pager
journalctl -u ssh --since '1 hour ago' --no-pager
```

## Think about

- Why should an application not run as root?
- What is the difference between a process and a service?
- How do owner, group, and other permissions affect access to a file?

## Acceptance criteria

You can identify a process, inspect a systemd service, read its recent logs, and explain `0640` as owner read/write, group read, and no access for others.
