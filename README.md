# docker
to pull the latest image from central repository : git pull <image name>
git pull nginx
to pull the specific tag of the image from central repository : git pull <image name>:<tag>
git pull ngix:alpine
to list all the image
docker images
to run the image : docker run <image name>
docker run nginx
to check all the running containers
docker ps
to check all the running or non running containers
docker ps -a
to initialize git 
git init
to pull the git repository
git pull https://github.com/hardik402/docker.git
to build the image from the docker file : docker build -t [repository:tag] [path]. by default the tag will be latest
docker build -t app .
to run the containers 
docker run -d -p 8081:8081 app
to check the running containers
docker ps
to check the logs
docker logs <containerID or container name>
to enter inside container 
docker exec -it <containerID> sh
to stop container
docker stop <containerID>
to remove container
docker rm <containerID>