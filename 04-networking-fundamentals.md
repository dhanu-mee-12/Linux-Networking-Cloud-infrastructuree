# Lab 04 — IP addressing, DNS, ports, and firewalls

## Inspect the host

```bash
ip -br address
ip route
resolvectl status || cat /etc/resolv.conf
ss -tulpen
```

## Test a name and a port

```bash
getent hosts example.com
dig example.com A +short
curl -I --max-time 5 https://example.com
nc -vz -w 3 <server-ip> 22
```

## Host firewall with UFW

Before enabling a firewall on a remote VM, allow your SSH port from your administration source. If your provider offers an emergency console, verify it is available.

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from <your-public-ip>/32 to any port 22 proto tcp
sudo ufw allow 80/tcp
sudo ufw enable
sudo ufw status verbose
```

Do not use `0.0.0.0/0` for SSH unless this is a temporary lab and you understand the risk.

## Acceptance criteria

You can distinguish a routing problem, DNS problem, blocked port, and stopped service using `ip`, `dig`, `ss`, `curl`, and firewall status output.
