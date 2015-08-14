#!/bin/sh
GITBUCKET_VERSION=3.5

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y --no-install-recommends openjdk-7-jre-headless curl sudo
apt-get clean
rm -rf /var/lib/apt/lists/*

curl -Ls "https://github.com/takezoe/gitbucket/releases/download/$GITBUCKET_VERSION/gitbucket.war" >/opt/gitbucket.war
chown $UID_GITBUCKET /opt/gitbucket.war

mkdir /gitbucket
