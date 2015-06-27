#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get dist-upgrade -y
apt-get install -y --no-install-recommends openjdk-7-jre-headless curl
apt-get clean
rm -rf /var/lib/apt/lists/*

curl -Ls https://github.com/takezoe/gitbucket/releases/download/3.4/gitbucket.war >/opt/gitbucket.war

mkdir /home/gitbucket/
mkdir /gitbucket
ln -s /gitbucket /home/gitbucket/.gitbucket
