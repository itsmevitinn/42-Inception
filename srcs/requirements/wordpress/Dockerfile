FROM alpine:3.14

RUN apk --no-cache update && \
apk add --no-cache php7-fpm php7-mysqli php7 php7-phar php7-json php7-mbstring mariadb-client

COPY ./tools/setup.sh /

RUN chmod +x /setup.sh

ENTRYPOINT ["/setup.sh"]