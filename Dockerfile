FROM perl:latest

MAINTAINER Yoann Le Garff (le-garff-yoann) <pe.weeble@yahoo.fr>

EXPOSE 8080 8443

WORKDIR /tmp

RUN \
    git clone https://github.com/navel-it/navel-installation-scripts.git && \
    bash navel-installation-scripts/navel-scheduler.sh -12 && \
    bash navel-installation-scripts/navel-cli.sh -1

USER navel-scheduler

ENTRYPOINT ["navel-scheduler"]

CMD ["--log-file-path", "/dev/null", "/usr/local/etc/navel-scheduler/meta.yml"]
