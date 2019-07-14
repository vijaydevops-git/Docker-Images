#!/bin/bash

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y
systemctl enable docker
systemctl start docker
docker swarm join --token SWMTKN-1-27cqo75hosc1ezi5bndd8ofsn0kyyvwb0aplyyiuhcginimjyr-4lnnurd2zsvmuxbj2kfjl8y9g 172.31.17.245:2377





######This is for Reference:

docker network create -d=bridge company
docker network ls
docker run --rm -d --name customer-api --network company swarmgs/customer
docker run --rm -d --name balance-api --network company -p 4000:3000 -e MYWEB_CUSTOMER_API=customer-api:3000 swarmgs/balance
