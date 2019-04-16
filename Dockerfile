## Build from jenkins LTS
FROM jenkins/jenkins:lts

MAINTAINER <neven.vucinic@nvteh.com> 

## Copy and install jenkins plugins with latest tag

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
