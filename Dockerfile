FROM perl:latest

MAINTAINER Yoann Le Garff (le-garff-yoann) <pe.weeble@yahoo.fr>

EXPOSE 8080 8443

WORKDIR /tmp

RUN \
    git clone https://github.com/navel-it/navel-installation-scripts.git && \
    bash navel-installation-scripts/navel-scheduler.sh -12 master

USER navel-scheduler

ENTRYPOINT ["navel-scheduler"]

CMD ["/usr/local/etc/navel-scheduler/meta.json"]
