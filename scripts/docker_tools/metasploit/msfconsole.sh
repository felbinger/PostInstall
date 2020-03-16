#!/bin/bash

# usage: msfconsole [--ports 4444:4444,5555:5555] [options]

DOCKER_ARGS=(
    '--rm=true'
    '--interactive'
    "--tty"
    "--volume="${HOME}"/.msf4:/home/msf/.msf4"
)
DOCKER_IMAGE="metasploitframework/metasploit-framework"
ARG_SEPERATOR=","
TOOL_ARGS=()

while [ ${#} -gt 0 ]; do
  key=${1}
  case ${key} in
    --ports)
      IFS=$ARG_SEPERATOR
      for port in ${2}; do
          if [[ ${port} == *":"* ]]; then
            DOCKER_ARGS+=("--publish=${port}")
          else
            echo -e "\e[1m\e[31m[!] Invalid port mapping detected: ${port}\e[0m"
          fi
      done
      shift  # shift --ports
      shift  # shift port list
      ;;
    *)
      TOOL_ARGS+=(${1})
      shift
      ;;
  esac
done

docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} ./msfconsole ${TOOL_ARGS[@]}

