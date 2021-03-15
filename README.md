# compose-sovereign
A docker-compose file to build and maintain your own private cloud

### Install

```bash

apt install -y docker.io docker-compose git

git clone https://github.com/abassel/compose-sovereign.git

cd compose-sovereign/

cp sample.env .env

nano .env

mkdir /data

docker-compose up -d --build

```

### Tech inside

- [x] Pi-Hole - Block network adds
- [x] Bitwarden - Password manager
- [ ] Joplin - Take notes
- [ ] Nginx reverse proxy manager - Reverse Proxy
- [ ] Gitea - git server
- [ ] Go CI/CD - CI/CD server
- [x] MongoDB
- [ ] PostgressSQL
- [ ] Portainer-ce
- [ ] Registry

### Env Config

