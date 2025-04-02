
<p align="center">
  <!--
  <a href="https://github.com/abassel/compose-sovereignty">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>
  -->
  <h1 align="center">🏰 Compose Sovereignty</h1>

  <p align="center">
    🚀 Your personal self-hosted cloud infrastructure using Docker Compose **_tightly_** integrated with Traefik and Homepage
    <!-- <br />
    <a href="https://abassel.github.io/compose-sovereignty/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/abassel/compose-sovereignty#example">View Demo</a>
    ·
    <a href="https://github.com/abassel/compose-sovereignty/issues">Report Bug</a>
    ·
    <a href="https://github.com/abassel/compose-sovereignty/issues">Request Feature</a> -->
  </p>

  <p align="center">
      <a href="https://github.com/abassel/compose-sovereignty/actions/workflows/docker-compose-test.yml"><img src="https://github.com/abassel/compose-sovereignty/actions/workflows/docker-compose-test.yml/badge.svg" alt="Docker Compose Tests"/></a>
      <a href="https://github.com/abassel/compose-sovereignty/pulls?utf8=%E2%9C%93&q=is%3Apr%20author%3Aapp%2Fdependabot"><img src="https://img.shields.io/badge/dependencies-up%20to%20date-brightgreen.svg" alt="Dependencies Status"/></a>
      <a href="https://github.com/abassel/compose-sovereignty/pulls"><img src="https://img.shields.io/github/issues-pr/abassel/compose-sovereignty" alt="Pull Requests Badge"/></a>
      <a href="https://github.com/abassel/compose-sovereignty/issues"><img src="https://img.shields.io/github/issues/abassel/compose-sovereignty" alt="Issues Badge"/></a>
  </p>

  <p align="center">
   <!-- <a href="https://pypi.org/project/compose-sovereignty/"><img src="https://img.shields.io/pypi/pyversions/compose-sovereignty.svg" alt="Python Version"/></a>
   <a href="https://github.com/abassel/compose-sovereignty/releases"><img src="https://img.shields.io/pypi/v/compose-sovereignty?color=green&label=version" alt="Version"/></a> -->
   <a href="https://github.com/abassel/compose-sovereignty/stargazers"><img src="https://img.shields.io/github/stars/abassel/compose-sovereignty.svg?style=social&label=Stars" alt="Stars Badge"/></a>
   <!-- <a href="https://github.com/abassel/compose-sovereignty/blob/main/.pre-commit-config.yaml"><img src="https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white" alt="Pre-commit"/></a> -->
   <!-- <a href="https://github.com/abassel/compose-sovereignty/blob/main/LICENSE"><img src="https://img.shields.io/github/license/abassel/compose-sovereignty" alt="License"/></a> -->
  </p></p>

<!-- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts -->
<p align="center">

  > [!CAUTION]
> ⚠️ **Security Warning**: This project is designed for local network deployment only. Do not expose directly to the internet.

</p>


## 🚀 Quick Start

1. **Install Dependencies**
```bash
apt install -y docker.io docker-compose git
```

2. **Clone & Setup**
```bash
# Clone repository
git clone https://github.com/abassel/compose-sovereignty.git
cd compose-sovereignty/

# Configure environment
cp sample.env .env
nano .env  # Customize your settings
```

3. **Deploy**
```bash
# Verify configuration
make cmd config

# Launch services
make start

# Configure hosts
sudo make hosts >> /etc/hosts
```

## 🟢 Available Services

<table align="center">
  <tr>
    <td align="center"><a href="apps/gitea"><img src="apps/gitea/icon.png" width="75px;" height="75px;" alt="Gitea"/><br /><b>Gitea</b></a></td>
    <!-- <td align="center"><a href="apps/haproxy"><img src="apps/haproxy/icon.png" width="75px;" height="75px;" alt="HAProxy"/><br /><b>HAProxy</b></a></td> -->
    <td align="center"><a href="apps/homepage"><img src="apps/homepage/icon.png" width="75px;" height="75px;" alt="Homepage"/><br /><b>Homepage</b></a></td>
    <td align="center"><a href="apps/jenkins"><img src="apps/jenkins/icon.png" width="75px;" height="75px;" alt="Jenkins"/><br /><b>Jenkins</b></a></td>
    <td align="center"><a href="apps/mongodb"><img src="apps/mongodb/icon.png" width="75px;" height="75px;" alt="MongoDB"/><br /><b>MongoDB</b></a></td>
    <td align="center"><a href="apps/nextcloud"><img src="apps/nextcloud/icon.png" width="75px;" height="75px;" alt="Nextcloud"/><br /><b>Nextcloud</b></a></td>
  </tr>
  <tr>
    <td align="center"><a href="apps/pihole_unbound"><img src="apps/pihole_unbound/icon.png" width="75px;" height="75px;" alt="Pi-hole"/><br /><b>Pi-hole</b></a></td>
    <!-- <td align="center"><a href="apps/squid_proxy"><img src="apps/squid_proxy/icon.png" width="75px;" height="75px;" alt="Squid"/><br /><b>Squid</b></a></td> -->
    <td align="center"><a href="apps/traefik"><img src="apps/traefik/icon.png" width="75px;" height="75px;" alt="Traefik"/><br /><b>Traefik</b></a></td>
    <td align="center"><a href="apps/trillium"><img src="apps/trillium/icon.png" width="75px;" height="75px;" alt="Trilium"/><br /><b>Trilium</b></a></td>
    <td align="center"><a href="apps/vaultwarden"><img src="apps/vaultwarden/icon.png" width="75px;" height="75px;" alt="Vaultwarden"/><br /><b>Vaultwarden</b></a></td>
  </tr>
</table>

## 🔮 Planned Services

| Category | Services |
|----------|----------|
| **Document Management** | • Paperless-ngx<br>• Papermerge DMS |
| **Note Taking** | • Gollum<br>• Bangle.io<br>• Zettlr |
| **Project Management** | • Plane (JIRA alternative)<br>• Focalboard (Trello alternative) |
| **Development** | • VSCodium<br>• Registry<br>• n8n<br>• Cloud9<br>• Code Server |
| **Security** | • Infisical |
| **Communication** | • Rocket.chat<br>• Databag |
| **Business Tools** | • Docuseal<br>• Flagsmith |

## 📚 Resources

### Similar Projects
- [Traefik2 YML Examples](https://github.com/CVJoint/traefik2/tree/master/ymlfiles) <- 100s of good file examples 
- [IOTstack Documentation](https://sensorsiot.github.io/IOTstack/Containers/AdGuardHome/)  <- 100s good example with nice docs
- [Bunkerized Web Server](https://github.com/bunkerity/bunkerweb)
- [Docker Compose Collection](https://github.com/Gibdos/compose_collection)
- [Make My Server](https://github.com/tomMoulard/make-my-server)
- [Docker Homelab Setup](https://github.com/cbirkenbeul/docker-homelab)

### Extra References
- [Docker Compose Firewall Guide](https://sequentialread.com/creating-a-simple-but-effective-firewall-using-vanilla-docker-compose/)
- [Privacy Tools Collection](https://hide.me/en/blog/awesome-self-hosted-privacy-and-security-tools/) <- alternatives
- [NGINX Proxy Implementation](https://github.com/nginx-proxy/nginx-proxy)
- [Self-hosting Cost Analysis](https://apurva-shukla.me/blog/why-i-selfhost/)
- [Github Search](https://github.com/search?q=traefik.http.routers&type=code)
- [Password Managers](https://www.wizcase.com/blog/most-secure-open-source-password-managers/)
