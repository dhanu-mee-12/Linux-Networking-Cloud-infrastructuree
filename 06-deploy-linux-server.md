# Lab 06 — Deploy a Linux server and web service

This lab follows the complete workflow: create VM → configure Linux → secure access → deploy service → test connectivity.

## 1. Create the VM

Choose an Ubuntu LTS image, a small instance size, a private network/subnet, a key pair, and the security group from Lab 05. Record the public IP as `<server-ip>`.

## 2. Connect and update

```bash
ssh -i ~/.ssh/infra_lab_ed25519 <user>@<server-ip>
sudo apt update
sudo apt -y full-upgrade
```

## 3. Deploy Nginx

```bash
sudo apt install -y nginx curl
sudo systemctl enable --now nginx
sudo systemctl is-active nginx
curl -I http://127.0.0.1
```

Or use the reviewed helper:

```bash
bash scripts/install-nginx.sh
```

## 4. Publish a simple landing page

```bash
sudo tee /var/www/html/index.html >/dev/null <<'HTML'
<!doctype html>
<html lang="en"><meta charset="utf-8"><title>Linux Infrastructure Lab</title>
<h1>Linux Infrastructure Lab</h1><p>Nginx is running.</p>
HTML
sudo nginx -t
sudo systemctl reload nginx
```

## 5. Secure and test

Apply Lab 03 SSH hardening only after key login works. Apply Lab 04 UFW rules only after the cloud security group is correct. From your client:

```bash
curl -I http://<server-ip>
ssh -i ~/.ssh/infra_lab_ed25519 <user>@<server-ip> 'hostname; systemctl is-active nginx'
```

## Troubleshooting order

1. Is the VM running and does it have the expected address?
2. Does the cloud security group allow the source and destination port?
3. Does the host firewall allow the port?
4. Is Nginx listening? `sudo ss -lntp | grep ':80'`
5. Is the service healthy? `sudo systemctl status nginx --no-pager`
6. What do the logs say? `sudo journalctl -u nginx --since '10 minutes ago'`
