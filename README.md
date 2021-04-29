# Docker Workshop

This repository contains the docker workshop to help colleagues get started
with [docker](https://www.docker.com/). In this workshop, we will perform
hands on tasks to build and execute a docker image.

- [Docker Workshop](#docker-workshop)
  - [Prerequisites](#prerequisites)
  - [Configuring your Git](#configuring-your-git)
  - [Connect to the VM](#connect-to-the-vm)
  - [Task 1: Executing an image from docker hub](#task-1-executing-an-image-from-docker-hub)
  - [Task 2: Building a docker image locally and executing it](#task-2-building-a-docker-image-locally-and-executing-it)

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

## Task 1: Executing an image from docker hub

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

## Task 2: Building a docker image locally and executing it

1. Clone this repository by executing the below command and `cd` into the
directory.

    ```bash
    git pull https://github.com/hardik402/docker.git
    ```

2. Build the image from the docker file : `docker build -t [repository:tag] [path]`.
By default, the image tag will be latest. Append your corp-key at the end of the
name of the image to make your image unique inside the VM.

    ```bash
    docker build -t app-{corpkey in small case} .
    ```

3. Run the container

    ```bash
    // -d flag executes container in detached mode
    docker run -d app-{corpkey in small case}
    ```

4. To check for the running containers

    ```bash
    docker ps
    ```

5. To check the logs

    ```bash
    docker logs {containerID or container name}
    ```

6. To enter inside a container

    ```bash
    docker exec -it {containerID} sh
    ```

7. To stop a running container

    ```bash
    docker stop {containerID}
    ```

8. To remove a container

    ```bash
    docker rm {containerID}
    ```
