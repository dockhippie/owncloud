FROM webhippie/php-apache:latest@sha256:89fd62f2cba9dba4e76d6889c19324b35b07fbc3be18f725da1935ebec5df2dc
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/app/data", "/app/config", "/app/custom"]

EXPOSE 8080

WORKDIR /app
CMD ["/bin/s6-svscan", "/etc/s6"]

ENV OWNCLOUD_VERSION 9.1.3
ENV OWNCLOUD_TARBALL https://github.com/owncloud/core/archive/v${OWNCLOUD_VERSION}.tar.gz
ENV THIRDPARTY_TARBALL https://github.com/owncloud/3rdparty/archive/v${OWNCLOUD_VERSION}.tar.gz

ENV CRON_ENABLED true

RUN apk update && \
  apk add --no-cache php7-ldap php7-ftp php7-exif php7-posix php7-xmlreader php7-pcntl imagemagick ffmpeg samba-client && \
  rm -rf /var/cache/apk/*

RUN curl -sLo - ${OWNCLOUD_TARBALL} | tar -xzf - --strip 1 -C /app

RUN curl -sLo - ${THIRDPARTY_TARBALL} | tar -xzf - --strip 1 -C /app/3rdparty

ADD rootfs /
