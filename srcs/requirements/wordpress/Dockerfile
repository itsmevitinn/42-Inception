FROM alpine:3.14

RUN apk --no-cache update && \
apk add --no-cache php7-fpm php7-mysqli php7 php7-phar php7-json php7-mbstring mariadb-client

# Download wordpress and move to the bin folder
RUN wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
chmod +x /usr/local/bin/wp

COPY ./tools/setup.sh /

RUN chmod +x /setup.sh

ENTRYPOINT ["/setup.sh"]