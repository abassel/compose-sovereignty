# compose-sovereign
A docker-compose file to build and maintain your own private cloud


>#### ⚠️**IMPORTANT**⚠️: Not intended to be exposed to the web. Host locally behind your router


### Install

```bash
apt install -y docker.io docker-compose git

git clone https://github.com/abassel/compose-sovereign.git

cd compose-sovereign/

# Copy sample variable list
cp sample.env .env

# Customize all variables
nano .env

ALL_FILES=$(find . -name 'docker-compose.yml' | awk '{print "-f "$0}' | tr "\n" " ")
# -f ./apps/mongodb/docker-compose.yml -f ./apps/pihole_unbound/docker-compose.yml

# Test variables/configuration
ADMIN_USER_GLOBAL=<USERNAME> ADMIN_PASS_GLOBAL=<PASSWORD> docker compose --env-file .env $(echo -n $ALL_FILES) config

# Run in detached mode
ADMIN_USER_GLOBAL=<USERNAME> ADMIN_PASS_GLOBAL=<PASSWORD> docker compose --env-file .env $(echo -n $ALL_FILES) up -d --build

# add /etc/hosts config
make hosts >> /etc/hosts

```

### Tech inside

- [x] Pi-Hole - Block network adds
- [ ] Joplin - Take notes
- [x] Traefik - Reverse Proxy
- [x] Gitea - git server
- [ ] Gilab - git server  
- [ ] Go CI/CD - CI/CD server
- [x] MongoDB
- [x] Vaultwarden - Password manager
- [ ] PostgressSQL
- [ ] Portainer-ce
- [ ] Registry

### Env Config



### Reference
- https://sequentialread.com/creating-a-simple-but-effective-firewall-using-vanilla-docker-compose/
- https://github.com/CVJoint/traefik2/blob/master/ymlfiles/bitwarden.yml
- https://github.com/Gibdos/compose_collection
- https://github.com/tomMoulard/make-my-server
- https://github.com/SensorsIot/IOTstack
- https://github.com/cbirkenbeul/docker-homelab 
- https://github.com/nginx-proxy/nginx-proxy

#### PENDING
- https://github.com/CVJoint/traefik2/tree/master/ymlfiles <- 100s of good file examples 
- https://sensorsiot.github.io/IOTstack/Containers/AdGuardHome/  <- 100s with nice docs  
- https://github.com/search?q=traefik.http.routers&type=code
- https://github.com/bunkerity/bunkerweb
- https://www.wizcase.com/blog/most-secure-open-source-password-managers/ <- password managers  
- https://apurva-shukla.me/blog/why-i-selfhost/  <- savings
- https://hide.me/en/blog/awesome-self-hosted-privacy-and-security-tools/#Seafile <- alternatives
