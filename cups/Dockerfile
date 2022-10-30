FROM nicholascarr/aarch64-addon-cups:1.0.0-alpha.25

LABEL io.hass.version="1" io.hass.type="addon" io.hass.arch="armhf|aarch64|i386|amd64"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        printer-driver-splix \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 631

CMD ["/run.sh"]
