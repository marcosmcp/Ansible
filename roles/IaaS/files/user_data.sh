#!/bin/bash

cd /tmp/

echo -e "Host *\n\tStrictHostKeyChecking no" > ~/.ssh/config

git clone -b IaaS-Prod --single-branch git@github.com:SelecaoGlobocom/marcos-roberto-souza.git

# Provisiona Infra Básica + Kubernetes 
ansible-playbook marcos-roberto-souza/roles/IaaS/tasks/install_basic.yml --become 

