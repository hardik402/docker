# docker

### connect to VM

- open git bash and execute below commnads to connect to VM
- replace hardik with your username in below commands
```
	ssh hardik@13.95.238.210
```	
- enter pwd
- to run docker commands we need sudo privileges so execute below commnads and then exit and connect again
```
	sudo usermod -aG docker hardik
	exit
	ssh hardik@13.95.238.210
	
```

### Please append your corp key while creating images/containers

1. to pull the latest image from central repository : git pull {image name}
```
	git pull nginx
```   

2. to pull the specific tag of the image from central repository : git pull {image name}:{tag}
```
	git pull ngix:alpine
```

3. to list all the image
```
	docker images
```
4. to run the image : docker run {image name}
```
	docker run nginx
	or
	docker run --network host -d nginx
```

5 to test container
```
	curl localhost
```

6. to check all the running containers
```
	docker ps
```

7. to check all the running or non running containers
```
	docker ps -a
```

8. to initialize git 
```
	git init
```

9. to pull the git repository
```
	git pull https://github.com/hardik402/docker.git
```

10. to build the image from the docker file : docker build -t [repository:tag] [path]. by default the tag will be latest
```
	docker build -t app .
```

11. to run the containers 
```
	docker run -d -p 8081:8081 app
```
12. to check the running containers
```
	docker ps
```
13. to check the logs
```
	docker logs {containerID or container name}
```
14. to enter inside container 
```
	docker exec -it {containerID} sh
```
15. to stop container
```
	docker stop {containerID}
```
16. to remove container
```
	docker rm {containerID}
```
