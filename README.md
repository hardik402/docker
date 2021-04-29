# Docker Workshop

This repository contains the docker workshop to help colleagues get started with [docker](https://www.docker.com/).

## Prerequisites

Please make sure you have the following tools installed on your system before getting started.

- [x] Git
- [x] Putty is optional, if you're using a linux machine or have ssh already installed

## Configuring your Git

You can download and install git on windows from the link [here](https://git-scm.com/download/win).
Once downloaded, install it by executing the setup.

Check via command line if your Git was installed correctly by executing below command.

```bash
git --version
```

Now, Git needs to be configured if you haven't configured it.
Execute the below lines in your terminal to set up Git.

```bash
// Replace "Your Name" with your name
git config --global user.name "Your Name"

// Replace "your_email_id@example.com" with any mail id
git config --global user.email your_email_id@example.com
```

To check if these values are properly set, execute the below command.

```bash
git config --list --show-origin
```

### Connect to VM

- open git bash and execute below commnads to connect to VM
- replace hardik with your username in below commands

```bash
 ssh hardik@ip
```

- enter pwd shared by community

### Please append your corp key(small case) while creating images/containers

1. to pull the latest image from central repository : git pull {image name}

```bash
 docker pull nginx
```

2. to pull the specific tag of the image from central repository : git pull {image name}:{tag}

```bash
 docker pull nginx:alpine
```

3. to list all the images

```bash
 docker images
```

4. to run the image : docker run {image name}

```bash
 docker run --network host -d nginx
```

5 to test container

```bash
 curl localhost
```

6. to check all the running containers

```bash
 docker ps
```

7. to check all the running or non running containers

```bash
 docker ps -a
```

8. to initialize git

```bash
 git init
```

9. to pull the git repository

```bash
 git pull https://github.com/hardik402/docker.git
```

10. to build the image from the docker file : docker build -t [repository:tag] [path]. by default the tag will be latest

```bash
 docker build -t app-{corpkey in small case} .
```

11. to run the containers

```bash
 docker run -d -p 8081:8081 app-{corpkey in small case}
```

12. to check the running containers

```bash
 docker ps
```

13. to check the logs

```bash
 docker logs {containerID or container name}
```

14. to enter inside container

```bash
 docker exec -it {containerID} sh
```

15. to stop container

```bash
 docker stop {containerID}
```

16. to remove container

```bash
 docker rm {containerID}
```
