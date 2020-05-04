#!/bin/bash

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y

cd /tmp/

echo -e "Host *\n\tStrictHostKeyChecking no" > ~/.ssh/config

cd /tmp/

git clone https://github.com/marcosmcp/Ansible.git

# Provisiona Infra Básica + Kubernetes 
ansible-playbook Ansible/roles/IaaS/tasks/install_basic.yml --become 

