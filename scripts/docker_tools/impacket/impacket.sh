#!/bin/bash

# usage: impacket tool [options]
# example: impacket GetUsersSPNs.py -request example.lan/admin

DOCKER_ARGS=(
    '--rm'
    '--interactive'
    '--tty'
)
DOCKER_IMAGE="impacket"
TOOL_ARGS=${@}

if [[ $# == 0 ]]; then
  echo -e "\e[33mListing tools...\e[39m"
  DOCKER_ARGS+=' --entrypoint /bin/bash'
  docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} -c ls
  echo -e "\e[33mUsage: impacket tool [options]\e[39m"
  echo -e "\e[33mExample: impacket GetUsersGPNs.py -request example.lan/admin\e[39m"
  exit
fi

docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} ${TOOL_ARGS[@]}
