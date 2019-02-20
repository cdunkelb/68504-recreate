#!/bin/bash
docker info
docker network ls
docker network create --attachable -d macvlan -o parent=eth0 mv-test
docker network inspect mv-test
docker container run -td --name nginx-mv-test --network mv-test nginx
