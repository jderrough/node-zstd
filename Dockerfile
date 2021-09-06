# syntax=docker/dockerfile:1
FROM ubuntu:latest
ARG NODE_VERSION=current
RUN apt-get update
RUN apt-get install -y curl sudo zstd
RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn