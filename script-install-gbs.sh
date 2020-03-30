#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install zsh git vim vlc fonts-firacode wget curl snapd -y

sudo apt-get update

sudo snap install docker

git config --global user.name "GBShadow"

git config --global user.email "gbs.shadow@gmail.com"

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs


curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

sudo apt-get update

sudo apt-get install insomnia

sudo docker run --name database -e POSTGRES_PASSWORD=docker -p 5432:5432 -d postgres

sudo docker run --name mongobarber -p 27017:27017 -d -t mongo

sudo docker run --name redisbarber -p 6379:6379 -d -t redis:alpine

sudo npm install -g expo-cli




