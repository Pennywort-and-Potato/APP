#!/bin/sh

case "$OSTYPE" in
  darwin*)  open /Applications/Docker.app ;;
  linux*)   sudo service docker restart ;;
  msys*)    cd "/c/Program Files/Docker/Docker/"; ./"Docker Desktop.exe" ;;
  *)        eval 'echo "UNKNOW SYSTEM: $OSTYPE" && exit 1' ;;
esac;

exit 0;