Script para criação e provisonamento de uma aplicação em um cluster swarm.  
  
Antes de iniciar, editar o arquivo copy_run_scripts.sh, acrescentando os endereços IP's e nomes de usuários das máquinas trabalhadoras (workers).  
  
No nó gerente (manager) executar os comandos:  
  
$ cd scripts  
$ sudo ./install_config_docker.sh ${USER}  
$ ./config_docker_compose_v2.sh  
$ ./master.sh node_manager_ip  
$ ./copy_run_scripts.sh  
$ ./run_swarm.sh  
