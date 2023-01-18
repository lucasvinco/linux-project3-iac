#!/bin/bash
# duplicate each block of code according to the number of nodes
# change 'node_ip' with IP address of node
# cahnge 'user' with user account of node
# change 'rootpass' with user account password of node
ssh-keyscan -H node_ip >> ~/.ssh/known_hosts

ssh user@node_ip 'echo "rootpass" | sudo -Sv && bash -s user' < install_config_docker.sh
ssh user@node_ip 'bash -s' < config_docker_compose_v2.sh
ssh user@node_ip 'bash -s' < worker.sh
