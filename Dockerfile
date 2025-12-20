FROM jenkins/jenkins:lts

USER root

RUN apt-get update 
RUN apt-get install -y docker.io
RUN rm -rf /var/lib/apt/lists/*
#RUN groupadd -f docker && usermod -aG docker jenkins
#RUN groupadd -g 984 docker && usermod -aG docker jenkins
RUN groupmod -g 984 docker && usermod -aG docker jenkins

USER jenkins

