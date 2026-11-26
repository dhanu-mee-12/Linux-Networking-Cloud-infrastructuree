# Security basics

Use least privilege: give users and services only the access they need. Prefer SSH keys over passwords, disable direct root SSH login, patch regularly, and expose the smallest possible network surface.

A useful mental model is:

1. **Cloud layer:** virtual network routes and security groups/network ACLs.
2. **Host layer:** `ufw`/`nftables`, local users, SSH configuration, file permissions.
3. **Application layer:** service binding address, authentication, updates, and logs.

Always keep a second SSH session open while changing SSH or firewall rules, and verify that your new rule works before closing the original session.
