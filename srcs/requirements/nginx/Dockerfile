# This Specifies the base images for the container (in this case, it's the 3.14 version of Alpine)
FROM alpine:3.14

# This Run commands in the container shell, and installs the specified packages
# (it will install nginx & openssl, and will create the directory "/run/nginx" as well)
RUN apk update && \
    apk add nginx openssl && \

# This Copies the contents of "./conf/nginx.conf" on the host machine to the "/etc/nginx/"
# directory inside the container
COPY ./conf/nginx.conf /etc/nginx/
COPY ./tools/setup.sh /

# This Specifies the command that will run when the container get started
CMD ["nginx", "-g", "daemon off;"]

