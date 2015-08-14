#!/bin/sh

[ -n "$UID" ] || UID=65534
if ! [ "$UID" -eq "$UID" ]; then
  echo '$UID is _NOT_ valid! Exiting!'
  exit -1
fi

chown -R $UID /gitbucket

sudo -u \#$UID java -jar /opt/gitbucket.war --gitbucket.home=/gitbucket
