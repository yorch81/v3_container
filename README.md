# V3ctor WareHouse Container #

## Description ##
Docker container for V3ctor WareHouse

## Requirements ##
* [DockerHub](https://hub.docker.com/repository/docker/yorch81/v3ctorwh)

## Build ##
Execute
~~~
docker build -t v3 .

docker run -d --name v3 -p 80:80 v3
~~~

## Pull ##
Execute
~~~
docker pull yorch81/v3ctorwh 

docker run -d -e MONGODB_SERVER=localhost -e MONGODB_USER=mongousr -e MONGODB_PWD=mongopwd -e MONGODB_DB=v3db -e MONGODB_PORT= -e V3_KEY=v3ctor_key --name v3 -p 80:80 yorch81/v3ctorwh:latest
~~~

P.D. Let's go play !!!

