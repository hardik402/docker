# Docker Workshop

This repository contains the docker workshop to help colleagues get started
with [docker](https://www.docker.com/).

## Prerequisites

Please make sure you have the following tools installed on your system before
getting started.

- [x] Git
- [x] Putty (optional)

## Configuring your Git

You can download and install git on windows from the link
[here](https://git-scm.com/download/win).Once downloaded, install it by 
executing the setup.

Check via command line if your Git was installed correctly by executing below
command.

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

## Connect to the VM

- Open Git bash and execute the below commands to connect to VM.
- Replace "hardik" with your username in the below command.
- Virtual machine's IP and password will be shared during the workshop.

```bash
 ssh hardik@ip
```

- Enter the password shared by community

> Note: Please append your corp key (small case) while creating images/containers

## Task: Executing an image from docker hub

1. To pull the `latest` tagged image from docker registry, execute the below command.

	```bash
	docker pull nginx
	```

2. To pull a specific `tag`(here, "alpine") of the image from docker registry,
execute the below command.

	```bash
	docker pull nginx:alpine
	```

3. To list all the images existing on the VM, execute the below command.

	```bash
	docker images
	```

4. To run the image, execute the below command.

	```bash
	docker run --network host -d nginx
	```

5. To test the executing nginx container, execute the below command.

	```bash
	curl localhost
	```

6. To check for all the running containers, execute the below command.

	```bash
	docker ps
	```

7. To check for all the running and non running containers

	```bash
	docker ps -a
	```

## Task: Building a docker image locally and executing it

9. To pull the git repository

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
