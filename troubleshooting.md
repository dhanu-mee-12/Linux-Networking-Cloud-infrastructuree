# Troubleshooting decision tree

## SSH timeout

Check the VM state, public IP, route, cloud security group, and whether the host is online. A timeout often indicates routing or filtering; it usually does not mean an SSH username is wrong.

## SSH permission denied

Check the username, key path, key permissions (`chmod 600 ~/.ssh/infra_lab_ed25519`), server-side `authorized_keys`, and effective `sshd` configuration. Use `ssh -vvv` for client diagnostics, but do not publish its output if it contains sensitive host details.

## HTTP connection refused

The host is reachable but no process accepted the connection. Check `systemctl status nginx`, `ss -lntp`, and Nginx logs.

## HTTP timeout

Check cloud rules, UFW, the VM route, and whether Nginx is bound to the expected interface. Test locally on the server with `curl http://127.0.0.1`.

## DNS resolves incorrectly

Check the record type, TTL, resolver cache, and whether the domain points at the current public IP. `dig +trace` can help separate authoritative DNS from local resolver issues.
