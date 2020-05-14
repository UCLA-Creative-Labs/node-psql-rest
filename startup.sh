#!/bin/bash

sudo yum update -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

sudo yum install -y $(cat yum_requirements.txt)

source ~/.bashrc
nvm install node
npm i express pg nodemon

sudo firewall-cmd --add-port=3000/tcp
sudo firewall-cmd --permanent --add-port=3000/tcp