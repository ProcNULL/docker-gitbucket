FROM debian:jessie

MAINTAINER Chronos <chronos@procnull.de>

# UID Gitbucket will run as; defaults to 65534 (nobody)
# Override at container creation time with "docker run --env UID_GITBUCKET=<NEW_UID>"
ENV UID_GITBUCKET=65534

ADD /scripts/ /opt/scripts/
RUN chmod 777 /opt/scripts/*; sleep 1; /opt/scripts/install.sh

VOLUME /gitbucket
EXPOSE 8080 29418
ENTRYPOINT ["/opt/scripts/start.sh"]
