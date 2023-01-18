#!/bin/bash
ssh-keyscan -H 192.168.73.128 >> ~/.ssh/known_hosts
ssh-keyscan -H 192.168.73.130 >> ~/.ssh/known_hosts
scp ./* lucas@192.168.73.128:/tmp
scp ./* lucas@192.168.73.130:/tmp

ssh lucas@192.168.73.128
sudo ./tmp/install_config_docker.sh lucas
./tmp/config_docker_compose_v2.sh
./tmp/worker.sh

ssh lucas@192.168.73.130
sudo ./tmp/install_config_docker.sh lucas
./tmp/config_docker_compose_v2.sh
./tmp/worker.sh