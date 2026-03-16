(own vm) ● Agreed, that's the right call. evilginx2 really wants to own port 443 on its own IP.

  Checklist for the new VM:
  - DNS A record: evilginx2.drakonix.systems → new VM IP
  - DNS A record: *.evilginx2.drakonix.systems → new VM IP
  - Firewall: inbound 80 and 443 open (both needed — 80 for ACME, 443 for phishing)
  - Firewall: outbound 443 open (for ACME and proxying to target sites)
  - No nginx on the VM — evilginx2 owns the ports directly

  Then on evilginx2:
  config domain evilginx2.drakonix.systems
  config ip <new-vm-ip>
  phishlets hostname linkedin evilginx2.drakonix.systems
  phishlets enable linkedin

  It should pick up certs automatically on the first phishlets enable.
