#!/usr/bin/env bash

# --
# Author
# --
# Iván Jaimes <ivan@iver.mx>
#
# Goal script:  set color environment variables.

set -o errexit
set -o nounset

#Variables
# export green='\033[0;32m'
# export yellow='\033[0;33m'
# export red='\033[0;31m'
# export NC='\033[0m' # No Color

export CLTYPE="\033"

  # command line _eye candy_
 export  NC="${CLTYPE}[0m"        # Text Reset
 export  BLACK="${CLTYPE}[0;30m"  # Black - Regular
 export  RED="${CLTYPE}[0;31m"    # Red
 export  GREEN="${CLTYPE}[0;32m"  # Green
 export  YELLOW="${CLTYPE}[0;33m" # Yellow
 export  BLUE="${CLTYPE}[0;34m"   # Blue
 export  PURPLE="${CLTYPE}[0;35m" # Purple
 export  CYAN="${CLTYPE}[0;36m"   # Cyan
 export  WHITE="${CLTYPE}[0;37m"  # White
 export  BOLD="${CLTYPE}[2;30m"   # Black - Bold

pcolor(){
  case "$1" in
    INFO)
      echo -e "${GREEN}[INFO]  ${NC} $2";
      ;;
    WARNING)
      echo -e "${YELLOW}[WARN]  ${NC} $2";
      ;;
    ERROR)
      echo -e "${RED}[ERROR] ${NC} $2";
      ;;
    DEBUG)
      if [[ "${ISDEBUG}" == "true" ]]; then
        echo -e "${PURPLE}[DEBUG] ${NC} $2";
      fi;
      ;;
    *)
      echo -e "${RED}ERROR${NC} Usage ${YELLOW}pcolor(${NC}INFO|WARNING|ERROR, MESSAGE ${YELLOW})${NC}" 1>&2;
      ;;
  esac
}