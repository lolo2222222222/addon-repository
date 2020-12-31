ARG BUILD_FROM
FROM $BUILD_FROM

LABEL io.hass.version="1" io.hass.type="addon" io.hass.arch="armhf|aarch64|i386|amd64"

ENV LANG C.UTF-8

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        vim \
        locales \
        whois \
        avahi-daemon \
        cups-bsd \
        printer-driver-all \
        printer-driver-gutenprint \
        hpijs-ppds \
        hp-ppd  \
        hplip \
        printer-driver-foo2zjs \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY rootfs /

EXPOSE 631

CMD ["/run.sh"]
