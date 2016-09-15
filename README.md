navel-scheduler Dockerfile
==========================

This repository contains **Dockerfile** of [navel-scheduler](https://github.com/Navel-IT/navel-scheduler) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/navelit/navel-scheduler/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

Base Docker Image
-----------------

* [perl](https://hub.docker.com/_/perl/)

Installation
------------

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/navelit/navel-scheduler/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull navelit/navel-scheduler`

Usage
-----

```bash
docker run -p 8080:8080 -p 8443:8443 -d --name navel-scheduler navelit/navel-scheduler
```

Copyright
---------

Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

License
-------

docker-navel-scheduler is licensed under the Apache License, Version 2.0
