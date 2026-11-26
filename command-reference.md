# Command reference

| Task | Commands |
|---|---|
| Identity | `whoami`, `id`, `groups` |
| Files | `ls -lah`, `cp`, `mv`, `find`, `du -sh` |
| Permissions | `stat`, `chmod`, `chown`, `umask` |
| Processes | `ps aux`, `top`, `pgrep`, `kill` |
| Services | `systemctl status|start|stop|restart|enable` |
| Logs | `journalctl -u <service>`, `tail -f /var/log/<file>` |
| Network | `ip address`, `ip route`, `ss -lntup` |
| DNS | `dig`, `getent hosts`, `resolvectl` |
| HTTP | `curl -I`, `curl -v` |
| Firewall | `sudo ufw status verbose`, `sudo ufw show raw` |
| SSH diagnostics | `ssh -vvv`, `sudo sshd -T` |
