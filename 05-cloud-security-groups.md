# Lab 05 — Cloud security groups

A security group is a stateful virtual firewall attached to a cloud instance or network interface. Names differ by provider, but the design principles are the same.

## Minimal inbound rules for the capstone

| Protocol | Port | Source | Reason |
|---|---:|---|---|
| TCP | 22 | Your public IP `/32` | Administration |
| TCP | 80 | `0.0.0.0/0` | Public HTTP demo, if required |
| TCP | 443 | `0.0.0.0/0` | HTTPS after TLS is configured |

Keep inbound rules for databases, caches, and internal services private to the application subnet or security group. Allow outbound traffic according to the provider and application requirements; do not treat a permissive default as a security design.

## Exercise

Create a security group using your cloud provider console or CLI. Before launching the VM, write down the intended rules. After launch, compare the provider rules with `sudo ufw status verbose` on the host. Test from both an allowed and disallowed source where practical.

## Acceptance criteria

You can explain why a packet may be blocked at the cloud layer even when the Linux service is listening, and why allowing a port in the cloud does not bypass the host firewall.
