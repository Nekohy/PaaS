FROM alpine AS builder
ARG CONFIG_JSON
RUN mkdir -p /etc/openresty \
    && echo "$CONFIG_JSON" > /etc/openresty/config.json

FROM ghcr.io/nekohy/nekoopenresty:main
COPY /etc/openresty/config.json /etc/openresty/