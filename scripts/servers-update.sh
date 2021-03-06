#!/bin/bash


# Sudo check
if [ "$(whoami)" != "www" ]; then
  echo "This script must be run by the www user" 1>&2
  exit 1
fi

cd /www/app

npm update --production

./scripts/servers-start.sh

exit 0
