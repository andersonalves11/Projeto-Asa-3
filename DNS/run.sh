#!/bin/bash

## Build
docker build -t bind9 .


## Run
docker network create -d bridge asa-net
docker run -d -p 53:53/tcp -p 53:53/udp --net=asa-net --name bind9 bind9
