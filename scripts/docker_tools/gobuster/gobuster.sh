#!/bin/bash

# usage: gobuster [options]

DOCKER_ARGS=(
    '--rm'
    '--interactive'
    '--tty'
    "--volume /opt/wordlists:/wordlists"
)
DOCKER_IMAGE="devalias/gobuster"
TOOL_ARGS=${@}

docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} ${TOOL_ARGS[@]}
