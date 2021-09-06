# syntax=docker/dockerfile:1
ARG VERSION=latest
FROM node:${VERSION}
RUN apt-get install zstd
