FROM webhippie/php-apache:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV OWNCLOUD_VERSION 8.1.0
ENV OWNCLOUD_TARBALL https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2

RUN apk add --update -f \
  php-ldap \
  php-ftp \
  php-exif \
  php-apcu \
  imagemagick \
  ffmpeg \
  samba-client \
  tar \
  rsync && \
  rm -rf /var/cache/apk/* && \
  curl -o - ${OWNCLOUD_TARBALL} | tar -jxf - -C /tmp/ && \
  rsync -az /tmp/owncloud/ /app && \
  rm -rf /tmp/owncloud

VOLUME ["/app/data", "/app/config", "/app/custom"]

ADD rootfs /
EXPOSE 80

WORKDIR /app
CMD ["/usr/bin/s6-svscan","/etc/s6"]
