FROM alpine

RUN apk upgrade --no-cache \
  && apk add --no-cache \
    musl \
    build-base \
    python3 \
    python3-dev \
    bash \
    openssl-dev \
    libffi-dev \
  && pip3 install --no-cache-dir --upgrade pip \
  && rm -rf /var/cache/* \
  && rm -rf /root/.cache/*

RUN pip3 install fandogh_cli --upgrade

ADD fandogh.bash /bin/
RUN chmod +x /bin/fandogh.bash
ENTRYPOINT /bin/fandogh.bash