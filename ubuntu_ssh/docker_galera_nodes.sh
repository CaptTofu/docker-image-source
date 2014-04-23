#!/bin/bash

for node in 1 2 3; 
do
  docker run -d -name=pxc${node} capttofu/ubuntu_ssh
done

echo [pxc_cluster] > hosts
for node in 1 2 3;
do
  echo `docker inspect pxc${node}|grep -i ipadd| awk '{print $2}'| sed -e 's/[",]//g'` >> hosts
done
