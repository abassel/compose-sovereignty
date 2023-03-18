# Pihole + Unbound + Wireguard

## Block list
- https://firebog.net
- https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt
- https://jussiroine.com/2021/07/goodbye-telemetry-and-ads-running-pi-hole-in-a-home-network/

### Reference

- https://github.com/NOXCIS/Docker-Pihole/blob/main/docker-compose.yml
- https://github.com/IAmStoxe/wirehole/blob/master/docker-compose.yml
- https://github.com/Simonwep/openvpn-pihole ( uses openvpn and creates image locally)

### Adding domains to blocklist/adlist
- https://github.com/bbttxu/docker-compose-pi-hole
    - https://github.com/bbttxu/docker-compose-pi-hole/blob/main/etc-pihole/adlists.list
-----
- https://github.com/AzagraMac/PiHoleDocker#main-black-lists
    - https://github.com/AzagraMac/PiHoleDocker/tree/master/list
----
- https://www.google.com/search?q=pihole+add+blocklist+docker-compose.yml
    - https://www.reddit.com/r/pihole/comments/t6v91g/fresh_docker_install_on_fresh_ubuntu_2004_server/
        - https://medium.com/alex-blog/automated-dns-ad-blocker-with-pi-hole-and-docker-8e3dae805405

#### pihole/ubound
- https://github.com/search?q=docker-compose+pihole&type=Repositories
- https://github.com/search?q=docker-compose+pihole+Unbound
- https://docs.pi-hole.net/guides/dns/unbound/

#### Alternative to ubound -> cloudflared
- https://docs.pi-hole.net/guides/dns/cloudflared/

#### Alternative to ubound -> dnscrypt-proxy
- https://forums.docker.com/t/dockerfile-endpoint-which-conflicts-with-docker-compose-command/121647

#### Alternative to ubound -> CoreDNS
- https://github.com/msnelling/docker-pihole-coredns/blob/master/Corefile
- https://github.com/codeniko/pihole-coredns-tls-docker