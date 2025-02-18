
## SSH key configuration

- Login and go to `settings` > `SSH/GPG Keys` and your public keys

## Reference
- https://github.com/CVJoint/traefik2/blob/master/ymlfiles/gitea.yml
- https://github.com/ruanbekker/drone-gitea-on-docker/blob/main/boot.sh # DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"