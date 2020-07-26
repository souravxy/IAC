#!/bin/bash

# Create the docker image
sudo docker build -t cnid_infra .	

# Remove swarm if already a part of
sudo docker swarm leave --force	 2>&1 > /dev/null

# Create docker swarm
sudo docker swarm init | grep -i "join --token" > swarm_token.sh

# When trying to scale horizontally, simply run 'swarm_token.sh' in all the machines.
# and they will become a part of the swarm as well, and container will run on them as well.

# Remove any existing service for cnid_infra
sudo docker service rm cnid_infra_service

# Create service for cnid_infra
sudo docker service create --name cnid_infra_Service -p 80:80 --replicas 3 cnid_infra

