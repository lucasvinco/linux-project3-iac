#!/bin/bash
cd ..
docker compose up -d
docker compose down --volumes
docker compose push
docker stack deploy --compose-file docker-compose.yml linux-project3-iac
docker service scale linux-project3-iac_web=10