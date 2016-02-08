FROM webhippie/php-apache:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/app/data", "/app/config", "/app/custom"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
EXPOSE 8080
WORKDIR /app

ENV OWNCLOUD_VERSION 8.2.2
ENV OWNCLOUD_TARBALL https://github.com/owncloud/core/archive/v${OWNCLOUD_VERSION}.tar.gz
ENV THIRDPARTY_TARBALL https://github.com/owncloud/3rdparty/archive/v${OWNCLOUD_VERSION}.tar.gz

RUN apk update && \
  apk add \
    php-ldap \
    php-ftp \
    php-exif \
    php-posix \
    imagemagick \
    ffmpeg \
    samba-client && \
  rm -rf \
    /var/cache/apk/*

RUN curl -sLo - \
  ${OWNCLOUD_TARBALL} | tar -xzf - --strip 1 -C /app

RUN curl -sLo - \
  ${THIRDPARTY_TARBALL} | tar -xzf - --strip 1 -C /app/3rdparty

ADD rootfs /
