## Build from jenkins LTS
FROM jenkins/jenkins:lts

MAINTAINER <neven.vucinic@nvteh.com> 

## Copy and install jenkins plugins with latest tag

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

## Set enviroment 
ENV JENKINS_USER admin
ENV JENKINS_PASS admin

## Skip initial setup

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false -Djenkins.CLI.disabled=true
#ENV JAVA_OPTS -Djenkins.CLI.disabled=true

## Set default user 

COPY defuser.groovy /usr/share/jenkins/ref/init.groovy.d/

## Set Volume 

VOLUME /var/jenkins_home
