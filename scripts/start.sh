#!/bin/sh

[ -n "$UID" ] || UID=65534

chown -R $UID /home/gitbucket
chown -R $UID /gitbucket
chown $UID /opt/gitbucket.war

sudo -u \#$UID /bin/sh -c "export HOME=/home/gitbucket; java -jar /opt/gitbucket.war"
