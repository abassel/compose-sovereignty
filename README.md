# compose-sovereignty
A docker-compose file to build and maintain your own private cloud

|⚠️ **WARNING**          |
|:---------------------------|
| Not intended to be exposed to the web. Host locally behind your router  |

### Install

```bash
apt install -y docker.io docker-compose git

git clone https://github.com/abassel/compose-sovereignty.git

cd compose-sovereignty/

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

### Tech inside/Apps
for more options visit https://www.opensourcealternative.to
- [x] Pi-Hole - Block network adds
- [x] Traefik - Reverse Proxy
- [x] Gitea - git server
- [x] MongoDB
- [x] Vaultwarden - Password manager
- [ ] Gollum notes
- [ ] Papermerge DMS
- [ ] Paperless-ngx - https://github.com/paperless-ngx/paperless-ngx
- [ ] Trillium notes - https://github.com/zadam/trilium
- [ ] Laverna - JavaScript note taking application with Markdown editor - https://github.com/Laverna/laverna
- [ ] Zettlr - A Markdown Editor for the 21st century - https://github.com/Zettlr/Zettlr
- ~~[ ] Notesnook - encrypted note taking - https://github.com/streetwriters/notesnook~~ Requires to create an account
- ~~[ ] Standard Notes - An end-to-end encrypted notes app - https://github.com/standardnotes/app~~ Requires pay to support Markdown
- [ ] Bangle-io - note taking app that saves notes locally in markdown - https://github.com/bangle-io/bangle-io
- [ ] Ory Kratos
- [ ] WikiJS
- [ ] Focalboard - Trello, Notion, and Asana alternative - https://github.com/mattermost/focalboard
- [ ] vscodium
- [ ] Registry
- [ ] n8n - https://n8n.io
- [ ] strapi - https://strapi.io
- [ ] WAF - Docker container mod security - https://github.com/topics/modsecurity https://github.com/topics/waf
- [ ] Rocket chat
- [ ] PostgressSQL
- [ ] Portainer-ce
- [ ] Infiscal - secret managment - https://infisical.com
- [ ] Docuseal - DocuSign alternative. - https://github.com/docusealco/docuseal
- [ ] Databag - federated messenger - https://github.com/balzack/databag
- [ ] Plane - Open Source JIRA - https://github.com/makeplane/plane
- [ ] Flagsmith - Feature flag and remote config - https://github.com/Flagsmith/flagsmith
- [ ] Other self hosted flag managment tools - https://posthog.com/blog/best-open-source-feature-flag-tools

### TODO:
- Improve table of applications using table like https://gist.github.com/rxaviers/7360908
- POC paperless-ngx - https://github.com/paperless-ngx/paperless-ngx
- POC note taking app - https://bangle.io
- POC cloud9
- Docs like https://github.com/pi-hole/docs/tree/master/docs
- WAF - Docker container mod security - https://github.com/topics/modsecurity https://github.com/topics/waf


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
