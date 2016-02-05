# Owncloud

[![](https://badge.imagelayers.io/webhippie/owncloud:latest.svg)](https://imagelayers.io/?images=webhippie/owncloud:latest 'Get your own badge on imagelayers.io')

These are docker images for Owncloud with Caddy running on an
[PHP container](https://registry.hub.docker.com/u/webhippie/php-caddy/).


## Usage

```bash
docker run -ti \
  --name owncloud \
  webhippie/owncloud:latest
```


## Versions

* [latest](https://github.com/dockhippie/owncloud/tree/master)
  available as ```webhippie/owncloud:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.2.2](https://github.com/dockhippie/owncloud/tree/8.2.2)
  available as ```webhippie/owncloud:8.2.2``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.2.1](https://github.com/dockhippie/owncloud/tree/8.2.1)
  available as ```webhippie/owncloud:8.2.1``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.2.0](https://github.com/dockhippie/owncloud/tree/8.2.0)
  available as ```webhippie/owncloud:8.2.0``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.1.5](https://github.com/dockhippie/owncloud/tree/8.1.5)
  available as ```webhippie/owncloud:8.1.5``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.1.4](https://github.com/dockhippie/owncloud/tree/8.1.4)
  available as ```webhippie/owncloud:8.1.4``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.1.3](https://github.com/dockhippie/owncloud/tree/8.1.3)
  available as ```webhippie/owncloud:8.1.3``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.1.2](https://github.com/dockhippie/owncloud/tree/8.1.2)
  available as ```webhippie/owncloud:8.1.2``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.1.1](https://github.com/dockhippie/owncloud/tree/8.1.1)
  available as ```webhippie/owncloud:8.1.1``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)
* [8.1.0](https://github.com/dockhippie/owncloud/tree/8.1.0)
  available as ```webhippie/owncloud:8.1.0``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud/)


## Available environment variables

```bash
ENV OWNCLOUD_DOMAIN owncloud.example.com
ENV OWNCLOUD_DB_TYPE sqlite
ENV OWNCLOUD_DB_NAME owncloud
ENV OWNCLOUD_DB_USERNAME
ENV OWNCLOUD_DB_PASSWORD
ENV OWNCLOUD_DB_HOST
ENV OWNCLOUD_DB_PREFIX
ENV OWNCLOUD_ADMIN_USERNAME admin
ENV OWNCLOUD_ADMIN_PASSWORD admin
```


## Inherited environment variables

```bash
ENV PHP_MEMORY_LIMIT 512M
ENV PHP_POST_MAX_SIZE 2G
ENV PHP_UPLOAD_MAX_FILESIZE 2G
ENV PHP_MAX_EXECUTION_TIME 3600
ENV PHP_MAX_INPUT_TIME 3600
ENV PHP_DATE_TIMEZONE UTC
```

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
