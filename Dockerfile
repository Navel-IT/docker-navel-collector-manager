FROM perl:latest

MAINTAINER Yoann Le Garff (le-garff-yoann) <pe.weeble@yahoo.fr>

EXPOSE 8080 8443

WORKDIR /tmp

ADD https://github.com/navel-it/navel-installation-scripts/archive/master.tar.gz .

RUN \
    tar xvzf master.tar.gz && \
    bash navel-installation-scripts-master/navel-scheduler.sh -12 master && \
    rm -Rf *

USER navel-scheduler

ENTRYPOINT ["navel-scheduler"]

CMD ["/usr/local/etc/navel-scheduler/meta.json"]
