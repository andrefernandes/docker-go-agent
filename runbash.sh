#!/bin/bash
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
GOPORT=${GOPORT:-8153}
#echo "Will use ports $GOPORT and $GOSPORT"
sudo mkdir -p /opt/go-agent
docker run --rm -t -i \
   --link go-server:go-server \
   andrefernandes/docker-go-agent:latest $ENVBASH ${@:2}

