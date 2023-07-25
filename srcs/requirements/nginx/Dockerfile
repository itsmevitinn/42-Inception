FROM alpine:3.14
# FROM arm64v8/alpine:3.14

RUN apk update
RUN apk add nginx

COPY ./conf/nginx.conf /etc/nginx/
COPY ./tools/setup.sh /

ENTRYPOINT ["/setup.sh"]