### build docker
  ```
docker build . -t myubuntu 
  ```

### run docker
  ```
docker run -d -p 80:80 docker/getting-started
  ```
  
#check if docker is runing 
  ```
docker ps -a
  ```

### login to the container
  ```
docker exec -it <opeful_banach> /bin/sh 
  ```
//change <openful_banch> to the name list on docer ps command


### Push to dockerhub
  ```
docker build -t plucksquid/myubuntu_image3:v1 .

docker run --name myubuntu22.04 -p 80:80 -d plucksquid/myubuntu_image3:v1

#check existing images
docker images

docker tag plucksquid/myubuntu_image3:v1 plucksquid/myubuntu_image3:v1-release


(docker login)
docker push plucksquid/myubuntu_image3:v1-release
  ```

# remove a contaner
  ```
  docker ps -a
  docker rm -f myubuntu22.04
  
  ```
