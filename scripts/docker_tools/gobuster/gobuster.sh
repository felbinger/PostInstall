#!/bin/bash

# usage: gobuster [options]

WORDLIST_DIR="/opt/wordlists"

DOCKER_ARGS=(
    '--rm'
    '--interactive'
    '--tty'
    "--volume ${WORDLIST_DIR}:${WORDLIST_DIR}"
    "--volume /etc/hosts:/etc/hosts"
)
DOCKER_IMAGE="devalias/gobuster"
TOOL_ARGS=${@}

docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} ${TOOL_ARGS[@]}
