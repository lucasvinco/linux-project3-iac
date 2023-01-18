#!/bin/bash
# to run:
# sudo ./install_config_docker.sh ${USER}
# or
# sudo ./install_config_docker.sh nome_do_usuario
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-cache policy docker-ce
apt-get install docker-ce -y

#systemctl status docker

# to use docker without sudo
if [ -n "$1" ]
then
	usermod -aG docker $1
	su - $1
fi