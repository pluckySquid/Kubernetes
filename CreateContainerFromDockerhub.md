
### download image from dockerhub:
  docker login
    username: plucksquid
  docker pull plucksquid/myubuntu_image1:v1-release

### run container on the VM: 
```
   docker container run -d -it --name yunshucontainer plucksquid/myubuntu_image1:v1-release
```

### run pods to mount on bigpvc:
  kubectl delete -f bigPVCPod.yml
  kubectl create -f bigPVCPod.yml
  kubectl get pods
  
### login to the pod
   kubectl exec -it big-pod -- /bin/bash