FROM certbot/certbot:latest

RUN apk update \
    && apk add --virtual git \
    && apk add bash
RUN pip install git+https://github.com/jedinerd/certbot-s3front.git#egg=certbot-s3front

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
