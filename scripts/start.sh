#!/bin/sh

[ -n "$UID_GITBUCKET" ] || UID_GITBUCKET=65534
if ! [ "$UID_GITBUCKET" -eq "$UID_GITBUCKET" ]; then
  echo "\$UID_GITBUCKET is _NOT_ valid! Exiting!"
  exit -1
fi

chown -R $UID_GITBUCKET /gitbucket

sudo -u \#$UID_GITBUCKET java -jar /opt/gitbucket.war --gitbucket.home=/gitbucket
 