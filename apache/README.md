# Owncloud

These are docker images for Owncloud running on an
[PHP container](https://registry.hub.docker.com/u/webhippie/php-apache/).


## Usage

```
docker run -p 80:80 -d --name owncloud-apache webhippie/owncloud-apache:latest
```


## Versions

* [latest](https://github.com/dockhippie/owncloud/tree/master)
  available as ```webhippie/owncloud-apache:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/owncloud-apache/)


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
