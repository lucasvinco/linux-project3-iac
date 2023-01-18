#!/bin/bash

# to run:
# ./config_docker_compose_v2.sh
# or
# ./config_docker_compose_v2.sh version
# ex:
# ./config_docker_compose_v2.sh 2.15.1

if [ -n "$1" ]
then
	version=$1
else
	version="2.15.1"
fi

mkdir -p ~/.docker/cli-plugins/
curl -SL "https://github.com/docker/compose/releases/download/v$version/docker-compose-$(uname -s)-$(uname -m)" -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
docker compose version