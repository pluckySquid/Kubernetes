
### download image from dockerhub:
  docker login
  ```
    username: plucksquid
    password: can't tell you
  ```
  ```
  docker pull plucksquid/myubuntu_image2:v1-release
  ```

### run container on the VM: 
```
   docker container run -d -it --name yunshucontainer plucksquid/myubuntu_image2:v1-release
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

### rm all container
  ```
docker image prune -a

docker ps -a
docker stop yunshucontainer
docker rm yunshucontainer

  ```
