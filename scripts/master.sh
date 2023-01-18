#!/bin/bash

if [ -n "$1" ]
then
  docker swarm init --advertise-addr "$1"
  docker swarm join-token worker | grep docker >> ./worker.sh
  docker service create --name registry --publish published=5000,target=5000 registry:2
fi
