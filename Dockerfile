FROM jenkins/jenkins:lts

USER root

#As root user, update packages and install the docker client -We have the socket to "talk" to dockerd, but without the client we can't execute docker commnads
RUN apt-get update 
RUN apt-get install -y docker.io
RUN rm -rf /var/lib/apt/lists/*
#Add the jenkins user to the docker group. We have a docker group in the host with id 984, so add jenkins user there 
RUN groupmod -g 984 docker && usermod -aG docker jenkins

USER jenkins

