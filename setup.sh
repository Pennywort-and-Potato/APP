#!/bin/sh
INSTALL GITHUB CLI
case "$OSTYPE" in
  darwin*)  brew install gh ;;
  linux*)   type -p curl >/dev/null || sudo apt install curl -y;
              curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg;
              sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg;
              echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null;
              sudo apt update;
              sudo apt install gh -y ;;
  msys*)    cmd < win_deps.bat ;;
  *)        echo "UNKNOW SYSTEM: $OSTYPE";
              exit 1 ;;
esac

# USING GITHUB CLI
gh config set prompt disabled
gh auth login
gh repo clone Pennywort-and-Potato/something_server
gh repo clone Pennywort-and-Potato/something_client

echo "INSTALLING NEXT DEPENDENCY"
cd something_client;
npm i -g yarn || yarn
echo "COMPLETE. SEE README FOR FURTHER INFOMATION"
read -n 1 -s