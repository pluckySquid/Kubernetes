
### download image from dockerhub:
  docker login
  ```
    username: plucksquid
    password: can't tell you
  ```
  ```
  docker pull plucksquid/myubuntu_image3:v1-release
  ```

### run container on the VM: 
```
   docker container run -d -it --name yunshucontainer plucksquid/myubuntu_image3:v1-release 
   or
   docker run --name yunshucontainer -i -t plucksquid/myubuntu_image3:v1-release

```

### run pods to mount on bigpvc:

  ```
  kubectl delete -f bigPVCPod.yml
  kubectl create -f bigPVCPod.yml
  kubectl get pods
  ```
  
### login to the pod
  ```
   kubectl exec -it big-pod -- /bin/bash
  ```

# rm all container
  ```
docker image prune -a

docker ps -a
docker stop yunshucontainer
docker rm yunshucontainer

  ```
  
  
# Remove image
```
docker images
```

  ```
user@yunshu:~/Nautilas$ docker images
REPOSITORY                       TAG          IMAGE ID       CREATED         SIZE
plucksquid/myubuntu_image3       v1-release   0b5930a8ca9a   22 hours ago    1.02GB
getting-started                  latest       6678fe65a79a   11 days ago     262MB
  ```

```
docker image rm <plucksquid/myubuntu_image3:v1-release>
```
