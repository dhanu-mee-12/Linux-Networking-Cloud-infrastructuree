# Networking fundamentals

## Addressing

An IPv4 address has 32 bits, written as four octets. In `192.168.10.25/24`, `/24` means the first 24 bits identify the network, leaving 8 host bits. The network is `192.168.10.0`, the broadcast address is `192.168.10.255`, and typical usable hosts are `.1` through `.254`.

Private IPv4 ranges include `10.0.0.0/8`, `172.16.0.0/12`, and `192.168.0.0/16`.

## DNS

DNS translates names to records. Common records include `A` (IPv4), `AAAA` (IPv6), `CNAME` (alias), `MX` (mail), and `TXT` (text/verification). Query with:

```bash
dig example.com A +short
dig example.com MX +short
```

## Ports and protocols

TCP is connection-oriented; UDP is connectionless. Common ports are SSH `22/tcp`, DNS `53/udp` and `53/tcp`, HTTP `80/tcp`, and HTTPS `443/tcp`. A listening port is not automatically reachable: cloud security groups, host firewalls, routing, and the service itself all matter.
