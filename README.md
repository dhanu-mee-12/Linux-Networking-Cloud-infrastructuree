# Linux, Networking & Cloud Infrastructure
A practical, beginner-friendly learning path for Linux administration, networking fundamentals, cloud security, and deploying a service on a Linux virtual machine.
## Learning objectives

By completing this repository, you will be able to:

1. Use the Linux CLI; work with files, permissions, users, groups, processes, services, logs, and SSH keys.
2. Explain IP addressing, subnets, DNS, ports, firewalls, and cloud security groups.
3. Deploy a Linux server end to end: create a VM, configure Linux, secure access, deploy a web service, and test connectivity.

## Roadmap

| Phase | Topic | Main deliverable |
|---|---|---|
| 1 | Linux fundamentals | `labs/01-linux-cli.md` |
| 2 | Users, permissions, processes, services | `labs/02-users-permissions-processes.md` |
| 3 | SSH and secure administration | `labs/03-ssh-hardening.md` |
| 4 | IP addressing, DNS, ports, firewalls | `labs/04-networking-fundamentals.md` |
| 5 | Cloud security groups | `labs/05-cloud-security-groups.md` |
| 6 | VM deployment and service delivery | `labs/06-deploy-linux-server.md` |
| 7 | Capstone validation | `labs/07-capstone-checklist.md` |

## Recommended environment

- Ubuntu Server 22.04 LTS or 24.04 LTS in a disposable VM or cloud instance
- A local terminal with `ssh`, `curl`, `dig` or `nslookup`, and `git`
- Optional: VirtualBox, Multipass, VMware, or an AWS/Azure/GCP account
- A non-root sudo user for administration

You can complete the Linux and networking sections locally. Cloud sections are provider-neutral, with examples that map to common providers.

## Quick start

```bash git clone https://github.com/<your-username>/linux-networking-cloud-infrastructure.git cd linux-networking-cloud-infrastructure # Read the safety notes and start with the first lab. less labs/01-linux-cli.md ```
## Capstone outcome

At the end, you will have a Linux VM running Nginx, reachable only on the intended ports, administered through SSH keys, and validated with repeatable connectivity checks.

```text Your laptop ──SSH/22──> Linux VM ──HTTP/80──> Nginx │ └── Cloud security group + host firewall ```

## Repository structure

```text . ├── README.md ├── CONTRIBUTING.md ├── LICENSE ├── SECURITY.md ├── docs/ # concepts, troubleshooting, and command reference ├── labs/ # guided exercises and acceptance criteria ├── modules/ # concise theory notes ├── scripts/ # reviewed, parameterized helper scripts ├── diagrams/ # architecture diagrams └── .github/workflows/ # lightweight Markdown validation ```

## Important command conventions

Commands beginning with `$` are run as a normal user. Commands beginning with `#` require root privileges, usually through `sudo`. Replace values in `<angle brackets>` before running commands.

## Progress tracking

- [ ] Linux CLI and filesystem operations
- [ ] Users, groups, permissions, processes, and services
- [ ] SSH key authentication and SSH hardening
- [ ] IPv4/subnets, DNS, ports, and HTTP testing
- [ ] Host firewall and cloud security group rules
- [ ] VM deployment and Nginx service deployment
- [ ] Capstone validation and troubleshooting notes

## License

This project is released under the MIT License. See [LICENSE](LICENSE).
