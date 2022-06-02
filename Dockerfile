FROM jenkins/jenkins:lts-jdk11
USER root
#USER jenkins
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
RUN \
    apt-get update && \
    apt-get install -y build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN curl -sSl https://get.docker.com/ | sh
USER jenkins

