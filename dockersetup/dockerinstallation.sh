#!/bin/bash

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io
systemctl enable docker
systemctl start docker
docker swarm join --token SWMTKN-1-27cqo75hosc1ezi5bndd8ofsn0kyyvwb0aplyyiuhcginimjyr-4lnnurd2zsvmuxbj2kfjl8y9g 172.31.17.245:2377