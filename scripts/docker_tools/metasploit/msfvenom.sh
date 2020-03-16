#!/bin/bash

# usage: msfvenom [options]

DOCKER_ARGS=(
    '--rm'
    '--interactive'
    '--tty'
    "--volume "${HOME}"/.msf4:/home/msf/.msf4"
    "--volume "${PWD}":/data"
)
DOCKER_IMAGE="metasploitframework/metasploit-framework"
TOOL_ARGS=${@}

while [ ${#} -gt 0 ]; do
  case ${1} in
    -o|--out)
      if [[ ${2} != "/data"* ]]; then
          # catch tool argument -o to check if the generated payload will be stored on /data
          # Files outside of ~/.msf4 and /data/ directories will be deleted after msfvenom is done.
          echo -e "\e[31mError: Unable to store payload at $2!\e[39m"
          echo -e "\e[33mStore your payload at /data/ to store it in the current directory.\e[39m Exiting..."
          exit 1
      fi
      TOOL_ARGS+=("$1 $2")
      shift  # shift -o/--out
      shift  # shift path
      ;;
    *)
      TOOL_ARGS+=(${1})
      shift
      ;;
  esac
done

echo docker run ${DOCKER_ARGS[@]} ${DOCKER_IMAGE} /usr/src/metasploit-framework/msfvenom ${TOOL_ARGS[@]}
