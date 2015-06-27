FROM debian:jessie

MAINTAINER Chronos <chronos@procnull.de>

ADD /scripts/ /opt/scripts/
RUN chmod 777 /opt/scripts/*; sleep 1; /opt/scripts/install.sh

VOLUME /gitbucket

EXPOSE 8080
EXPOSE 29418

ENTRYPOINT ["/opt/scripts/start.sh"]
