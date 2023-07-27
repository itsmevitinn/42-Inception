FROM alpine:3.14

# Install MariaDB and set the root password
RUN apk update && \
    apk add mariadb mariadb-client

# Copy the setup that will run when the container starts up
COPY ./tools/setup.sh /
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/

# Give the setup the appropriate permissions
RUN chmod +x /setup.sh

ENTRYPOINT [ "/setup.sh" ]