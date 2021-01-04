#!/usr/bin/env bash

# setup environment to use proxmox self-signed cert
echo "export REQUESTS_CA_BUNDLE=/home/pegasus/certs/proxmox-ca-bundle.crt" >> /home/pegasus/.bashrc

# install ansible
curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
python3 /tmp/get-pip.py
rm /tmp/get-pip.py
python3 -m pip install ansible 
python3 -m pip install argcomplete
activate-global-pythong-argcomplete

# install devops tools - arkade, k3sup, kubectl, kubectx
curl -sLS https://dl.get-arkade.dev -o /tmp/get-arkade.sh
sh /tmp/get-arkade.sh
rm /tmp/get-arkade.sh

HOME=/home/pegasus arkade get k3sup
HOME=/home/pegasus arkade get kubectl
HOME=/home/pegasus arkade get kubectx

chown -R pegasus.pegasus /home/pegasus/.arkade 
echo "export PATH=$PATH:~/.arkade/bin" >> /home/pegasus/.bashrc