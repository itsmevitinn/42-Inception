FROM alpine:3.14

RUN apk --no-cache update && \
apk add --no-cache mariadb mariadb-client
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY ./tools/setup.sh /

RUN chmod +x /setup.sh

ENTRYPOINT ["/setup.sh"]