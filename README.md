# docker
1. to pull the latest image from central repository : git pull <image name>

git pull nginx

2. to pull the specific tag of the image from central repository : git pull <image name>:<tag>
[Source]
----
git pull ngix:alpine
----
3. to list all the image
[Source]
----
docker images
----
4. to run the image : docker run <image name>
[Source]
----
docker run nginx
----
5. to check all the running containers
[Source]
----
docker ps
----
6. to check all the running or non running containers
[Source]
----
docker ps -a
----
7. to initialize git 
[Source]
----
git init
----
8. to pull the git repository
[Source]
----
git pull https://github.com/hardik402/docker.git
----
9. to build the image from the docker file : docker build -t [repository:tag] [path]. by default the tag will be latest
[Source]
----
docker build -t app .
----
10. to run the containers 
[Source]
----
docker run -d -p 8081:8081 app
----
11. to check the running containers
[Source]
----
docker ps
----
12. to check the logs
[Source]
----
docker logs <containerID or container name>
----
13. to enter inside container 
[Source]
----
docker exec -it <containerID> sh
----
14. to stop container
[Source]
----
docker stop <containerID>
----
15. to remove container
[Source]
----
docker rm <containerID>
----
