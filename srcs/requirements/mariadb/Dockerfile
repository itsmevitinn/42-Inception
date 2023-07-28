FROM alpine:3.14

RUN apk update && \
    apk add mariadb mariadb-client

COPY ./tools/setup.sh /
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/

RUN chmod +x /setup.sh

ENTRYPOINT [ "/setup.sh" ]