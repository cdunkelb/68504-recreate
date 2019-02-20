#!/bin/bash
docker info
docker network ls
docker network inspect mv-test
docker container start nginx-mv-test
