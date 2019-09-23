FROM python:3.6-alpine
ENTRYPOINT ["/opt/certbot/certbotw"]

WORKDIR /opt/certbot

RUN apk add --no-cache --virtual .certbot-deps \
    libffi \
    libssl1.1 \
    ca-certificates \
    binutils \
    bash

RUN apk add --no-cache --virtual .build-deps \
    gcc \
    linux-headers \
    openssl-dev \
    musl-dev \
    libffi-dev \
    && pip install certbot-s3front \
    && apk del .build-deps

COPY ./certbotw /opt/certbot/
