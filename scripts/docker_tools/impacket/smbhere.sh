#!/bin/bash

# usage: smbhere [sharename] [options]
# example: smbhere certs -username admin -password secret

DOCKER_ARGS=(
    '--rm'
    '--interactive'
    '--tty'
    '--publish 445:445'
    "--volume "${PWD}":/smbdata"
)
DOCKER_IMAGE="impacket"
[[ -z ${1} ]] && name="public" || name=${1}
shift
TOOL_ARGS=${@}

docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} smbserver.py -smb2support ${name} /smbdata ${TOOL_ARGS[@]}
