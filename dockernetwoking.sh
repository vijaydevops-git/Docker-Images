#!/bin/bash
docker network ls
docker network create network_bridge01
docker network ls
sleep 5
docker run -d -p 7000:8080 --name nginx nginx:latest --network network_bridge01 --replicas 5

echo "creating new network bridge and attaching the existing container to it as well"

docker network create network_bridge02  | grep network_bridge02

sleep 5

docker network connect network_bridge02 nginx

docker network ls

docker network inspect network_bridge02 | grep Containers

docker network inspect network_bridge01 | grep Containers

docker container ls | grep nginx | wc -l