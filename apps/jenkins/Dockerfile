
# https://registry.hub.docker.com/layers/jenkins/jenkins/latest/images/sha256-07ae6ad9fee47792add3b58a02960e53f1d3a446a433ec372b8163c762ddfcaa?context=explore

# https://medium.com/the-devops-ship/custom-jenkins-dockerfile-jenkins-docker-image-with-pre-installed-plugins-default-admin-user-d0107b582577

# https://docs.docker.com/engine/install/debian/

FROM jenkins/jenkins:2.492.3-lts

WORKDIR /var/jenkins_home

USER root

RUN apt-get update -y && apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release && \
    mkdir -m 0755 -p /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update -y && \
    apt install -y docker-ce-cli


USER jenkins
