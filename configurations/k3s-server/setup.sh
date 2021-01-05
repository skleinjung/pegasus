#!/usr/bin/env bash

# install devops tools - arkade, k3sup
curl -sLS https://dl.get-arkade.dev -o /tmp/get-arkade.sh
sh /tmp/get-arkade.sh
rm /tmp/get-arkade.sh

HOME=/home/pegasus arkade get k3sup

chown -R pegasus.pegasus /home/pegasus/.arkade 
echo "export PATH=$PATH:~/.arkade/bin" >> /home/pegasus/.bashrc

/home/pegasus/.arkade/bin/k3sup install \
  --k3s-extra-args '--disable servicelb --with-node-id' \
  --local