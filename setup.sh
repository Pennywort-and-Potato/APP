#!/bin/sh
ENV_FILE='.env'
ENV_CONTENT='
#GLOBAL CONFIGS\n
ENVIRONMENT=dev             #dev or prod
#DATABASE CONFIGS\n
DBA=postgresql              #Database Adapter\n
DBH=pg                      #Database Host\n
DBHP=5432                   #Database Port\n
DBU=khoa                    #Database User\n
DBP=Khoa123123              #Database Password\n
#SERVER_ENV\n
RAILS_ENV=development\n
API_PORT=3000\n
AUTH_SECRET=EMILIAIZDABEZT  #JWT Secret\n
#CLIENT_ENV\n
'
# INSTALL GITHUB CLI
case "$OSTYPE" in
  darwin*)  brew install gh ;;
  linux*)   eval 'echo "AVAILABLE ON FUTURE UPDATE" && exit 0' ;;
  msys*)    winget install --id GitHub.cli ;;
  *)        eval 'echo "UNKNOW SYSTEM: $OSTYPE" && exit 1' ;;
esac

# USING GITHUB CLI
gh auth login
gh repo clone Pennywort-and-Potato/something_server
gh repo clone Pennywort-and-Potato/something_client

[ -e $ENV_FILE ] && rm "$ENV_FILE"
echo -e $ENV_CONTENT >> $ENV_FILE
echo "COMPLETE. SEE README FOR FURTHER INFOMATION"