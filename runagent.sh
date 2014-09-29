#!/bin/bash
AGENT_NAME=$1
AGENT_NAME=${AGENT_NAME:-"go-agent"}
#echo "Will use ports $GOPORT and $GOSPORT"
sudo mkdir -p /opt/go-agent
docker run --rm -t -i --hostname="$AGENT_NAME" \
   --link go-server:go-server \
   andrefernandes/docker-go-agent:latest

