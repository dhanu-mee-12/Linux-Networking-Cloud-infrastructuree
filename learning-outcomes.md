# What you will learn and what the output means

## What this project is

This repository is a practical course and lab guide. It is not a pre-created cloud server. The repository teaches you how to create and secure a Linux server yourself, then deploy a web service on it.

The final technical output of the course is:

```text
Your computer
    |
    | SSH key, TCP port 22
    v
Ubuntu Linux VM
    |
    | Host firewall + cloud security group
    v
Nginx web server, TCP port 80
```

When the capstone is complete, opening `http://<server-ip>` in a browser should show:

```text
Linux Infrastructure Lab
Nginx is running.
```

## What you learn

### 1. Linux command line

You learn how to:

- Navigate directories with `pwd`, `cd`, and `ls`.
- Create, copy, move, inspect, and delete files.
- Understand important directories such as `/etc`, `/var/log`, `/home`, and `/var`.
- Search for files with `find`.
- Check disk space using `df` and `du`.

### 2. Users and permissions

You learn how Linux controls access using:

- Users and groups.
- File ownership.
- Permission values such as `0640` and `0755`.
- `sudo` and the principle of least privilege.

### 3. Processes and services

You learn the difference between a running process and a managed service. You practice:

- Viewing processes with `ps`.
- Checking services with `systemctl`.
- Reading service logs with `journalctl`.
- Starting, stopping, restarting, and enabling services.

### 4. SSH security

You learn how to administer a remote Linux server securely using:

- Ed25519 SSH key pairs.
- A protected private key on your computer.
- A public key in the server user’s `authorized_keys` file.
- Restricted root login and password login settings.

### 5. Networking

You learn:

- IPv4 addresses and CIDR notation such as `/24`.
- Private address ranges.
- Routes and default gateways.
- DNS records and name resolution.
- TCP ports such as 22, 80, and 443.
- How to diagnose DNS, routing, firewall, and service problems.

### 6. Cloud infrastructure

You learn that a cloud server has multiple security layers:

1. Cloud security group or virtual firewall.
2. Linux host firewall such as UFW.
3. SSH and service configuration.
4. Application-level security.

You learn why opening port 80 in a cloud security group is not enough if the Linux firewall or web service blocks the connection.

### 7. Deployment

You learn the complete deployment sequence:

1. Create an Ubuntu VM.
2. Connect through SSH.
3. Update the operating system.
4. Install and start Nginx.
5. Configure firewall rules.
6. Test HTTP and SSH connectivity.
7. Troubleshoot failures methodically.

## What counts as your final output

Your final project evidence should contain:

- The GitHub repository.
- A screenshot or copied output showing SSH key login succeeded.
- A screenshot or copied output showing `systemctl is-active nginx` returns `active`.
- A screenshot or copied output from `curl -I http://<server-ip>`.
- A screenshot of the cloud security group rules.
- A screenshot of `sudo ufw status verbose`.
- A short paragraph explaining one problem you diagnosed and fixed.

Do not publish private keys, passwords, access tokens, or sensitive public IP information in the repository.

## Important limitation

The repository cannot create a cloud VM on your behalf because that requires your cloud provider account, region, billing choices, and credentials. Labs 01–05 can be studied and practiced locally. Lab 06 creates the real server when you follow it using your own VM or cloud account.
