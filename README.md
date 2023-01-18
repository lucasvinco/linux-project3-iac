Script para criação e provisonamento de uma aplicação em um cluster swarm.  
  
Antes de iniciar, editar o arquivo config_nodes.sh, acrescentando os endereços IP's e nomes de usuários e senhas das máquinas trabalhadoras (workers). Criar um arquivo nginx.conf baseado no nginx.conf.example contendo os endereços IP's dos hosts.  
  
No nó gerente (manager) executar os comandos:  
  
```
$ chmod +x scripts/*  
$ cd scripts  
$ sudo ./install_config_docker.sh ${USER}  
$ su - ${USER}  
$ ./config_docker_compose_v2.sh  
$ ./master.sh node_manager_ip  
$ ./config_nodes.sh // ao pedir a senha do [sudo], não digitar nada, apenas pressione ENTER  
$ ./run_swarm.sh  
```
  
E para testar se está tudo funcionando:  
  
```
$ curl http://node_ip:8080
```
