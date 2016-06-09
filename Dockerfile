FROM perl:latest

MAINTAINER Yoann Le Garff (le-garff-yoann) <pe.weeble@yahoo.fr>

EXPOSE 8080 8443

WORKDIR /tmp

RUN \
    git clone https://github.com/navel-it/navel-installation-scripts.git && \
    bash navel-installation-scripts/navel-scheduler-installer.sh -12 master && \
    cpanm https://github.com/navel-it/navel-cli.git@master

USER navel-scheduler

ENTRYPOINT ["navel-scheduler"]

CMD ["--log-file-path", "/dev/null", "/usr/local/etc/navel-scheduler/meta.yml"]