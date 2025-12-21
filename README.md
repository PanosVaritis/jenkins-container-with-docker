## Jenkins container with itergrated docker

### Installation and execution

- Clone repository / Run container -check description in the section below- / Stop container (omit -v if you want to keep the volume. If volume is erased all configuration will be lost -user, jobs, credentials...-)
```bash
git clone https://github.com/PanosVaritis/jenkins-container-with-docker.git
cd jenkins-container-with-docker
docker compose up
docker compose down
```
- Open browser in localhost:8080, and when prompted for admin password you can take it from the logs
- For start install the suggested plugins, and then create a user with the credential you want
- You are ready now to use jenkins
### About
This Dockerfile when parameterized could be used as a base image for any container that wishes to use docker inside -docker in docker/DiD-. In this scenario along with the compose is used to have a jenkins server running from a container and having docker inside to run docker commands (ex: push image to container registry). Actually we are allowing to the container, to use the docker socket of the host

<!-- **Requirements** -->
### Requirements
- Having a host with docker installed, and also a docker group in which as host user are inside (not running docker as sudo)
- The socket that communicates with the dockerd, to be correctly set up (The docker group user have rights on /var/run/docker.socket)
- In the docker file change the "984" with the id of your docker group (run id command in terminal to see)
